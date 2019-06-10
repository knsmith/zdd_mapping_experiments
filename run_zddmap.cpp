/*------------------------------------------------------------------------------
| This file is distributed under the MIT License.
| See accompanying file /LICENSE for details.
| Author(s): Mathias Soeken, Kate Smith
*-----------------------------------------------------------------------------*/
#include "tweedledum/algorithms/mapping/zddmap.hpp"
#include "tweedledum/io/read_device.hpp"
#include "tweedledum/utils/device.hpp"

#include <chrono>
#include <fstream>
#include <iostream>
#include <iterator>
#include <sstream>
#include <string.h>
#include <tweedledum/gates/gate_set.hpp>
#include <tweedledum/gates/mcmt_gate.hpp>
#include <tweedledum/gates/mcst_gate.hpp>
#include <tweedledum/io/write_unicode.hpp>
#include <tweedledum/networks/netlist.hpp>
#include <vector>
#include <fmt/format.h>

using namespace tweedledum;

netlist<mcst_gate> make_network_from_quil(std::string file_name)
{
	// use this to transform quil to netlist
	// note: quil must be in clifford+t representation
	netlist<mcst_gate> new_nwk;
	std::vector<std::string> qubits_used;

	std::ifstream ckt_file(file_name);
	if (ckt_file.is_open()) {
		std::string line;
		while (getline(ckt_file, line)) {
			std::istringstream buf(line);
			std::istream_iterator<std::string> beg(buf), end;
			std::vector<std::string> tokens(beg, end);
			if (tokens[0] == "H") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::hadamard, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::hadamard, tokens[1]);
				}
			} else if (tokens[0] == "X") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::pauli_x, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::pauli_x, tokens[1]);
				}
			} else if (tokens[0] == "Z") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::pauli_z, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::pauli_z, tokens[1]);
				}
			} else if (tokens[0] == "T") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::t, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::t, tokens[1]);
				}
			} else if (tokens[0] == "RZ(-pi/4)") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::t_dagger, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::t_dagger, tokens[1]);
				}
			} else if (tokens[0] == "S") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::phase, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::phase, tokens[1]);
				}
			} else if (tokens[0] == "RZ(-pi/2)") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					new_nwk.add_gate(gate::phase_dagger, tokens[1]);
				} else {
					qubits_used.push_back(tokens[1]);
					new_nwk.add_qubit(tokens[1]);
					new_nwk.add_gate(gate::phase_dagger, tokens[1]);
				}
			} else if (tokens[0] == "CNOT") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					if (std::find(qubits_used.begin(), qubits_used.end(),
					              tokens[2])
					    != qubits_used.end()) {
						new_nwk.add_gate(gate::cx, tokens[1], tokens[2]);

					} else {
						qubits_used.push_back(tokens[2]);
						new_nwk.add_qubit(tokens[2]);
						new_nwk.add_gate(gate::cx, tokens[1], tokens[2]);
					}

				} else {
					if (std::find(qubits_used.begin(), qubits_used.end(),
					              tokens[2])
					    != qubits_used.end()) {
						qubits_used.push_back(tokens[1]);
						new_nwk.add_qubit(tokens[1]);
						new_nwk.add_gate(gate::cx, tokens[1], tokens[2]);
					} else {
						qubits_used.push_back(tokens[1]);
						qubits_used.push_back(tokens[2]);
						new_nwk.add_qubit(tokens[1]);
						new_nwk.add_qubit(tokens[2]);
						new_nwk.add_gate(gate::cx, tokens[1], tokens[2]);
					}
				}

			} else if (tokens[0] == "CZ") {
				if (std::find(qubits_used.begin(), qubits_used.end(), tokens[1])
				    != qubits_used.end()) {
					if (std::find(qubits_used.begin(), qubits_used.end(),
					              tokens[2])
					    != qubits_used.end()) {
						new_nwk.add_gate(gate::cz, tokens[1], tokens[2]);

					} else {
						qubits_used.push_back(tokens[2]);
						new_nwk.add_qubit(tokens[2]);
						new_nwk.add_gate(gate::cz, tokens[1], tokens[2]);
					}

				} else {
					if (std::find(qubits_used.begin(), qubits_used.end(),
					              tokens[2])
					    != qubits_used.end()) {
						qubits_used.push_back(tokens[1]);
						new_nwk.add_qubit(tokens[1]);
						new_nwk.add_gate(gate::cz, tokens[1], tokens[2]);
					} else {
						qubits_used.push_back(tokens[1]);
						qubits_used.push_back(tokens[2]);
						new_nwk.add_qubit(tokens[1]);
						new_nwk.add_qubit(tokens[2]);
						new_nwk.add_gate(gate::cz, tokens[1], tokens[2]);
					}
				}

			} else {
				std::cout << "Gate could not be added to network. Exiting...\n";
				std::exit(0);
			}
		}
	}

	return new_nwk;
}

int main(int argc, char** argv)
{
	if (argc < 2) {
		std::cerr << "[e] Input file not specified.\n";
		return EXIT_FAILURE;
	}

	netlist<mcst_gate> network = make_network_from_quil(argv[1]);
	device arch = device::ring(network.num_qubits());
	// device arch = read_device(argv[1]);
        find_maximal_partitions_params ps;
        ps.mapped_filename = fmt::format( "{}_mapped.quil", std::string(argv[1]).substr(0,std::string(argv[1]).size()-5) );
        ps.verbose = true;
        find_maximal_partitions_stats st;
	find_maximal_partitions(network, arch, ps, &st); 

        std::cout << fmt::format( "Total time = {:7.2f} secs\n", st.time_total );
        std::cout << fmt::format( "Time for map search = {:7.2f} secs\n", st.time_map_search );


}
