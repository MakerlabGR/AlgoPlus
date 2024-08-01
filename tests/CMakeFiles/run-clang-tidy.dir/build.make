# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/spirosmag/documents/AlgoPlus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spirosmag/documents/AlgoPlus/tests

# Utility rule file for run-clang-tidy.

# Include any custom commands dependencies for this target.
include CMakeFiles/run-clang-tidy.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/run-clang-tidy.dir/progress.make

CMakeFiles/run-clang-tidy:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/spirosmag/documents/AlgoPlus/tests/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running clang-tidy..."
	cd /Users/spirosmag/documents/AlgoPlus && /opt/homebrew/opt/llvm/bin/clang-tidy -p /Users/spirosmag/documents/AlgoPlus/tests -header-filter=.* -system-headers /Users/spirosmag/documents/AlgoPlus/src/algorithms/dynamic_programming/coin_change.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/dynamic_programming/fib.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/dynamic_programming/kadane.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/dynamic_programming/lcs.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/dynamic_programming/lis.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/number_theory/eratosthenes_sieve.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/number_theory/gcd.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/number_theory/mersenne_primes.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/bfs.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/binary_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/dfs.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/exponential_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/interpolation_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/jump_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/linear_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/searching/ternary_search.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/bubble_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/bucket_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/counting_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/heap_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/insertion_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/merge_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/quick_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/radix_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/sorting/selection_sort.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/string/edit_distance.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/string/find_and_replace.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/string/kmp.h /Users/spirosmag/documents/AlgoPlus/src/algorithms/string/rabin_karp.h /Users/spirosmag/documents/AlgoPlus/src/classes/disjoint_set/disjoint_set.h /Users/spirosmag/documents/AlgoPlus/src/classes/graph/graph.h /Users/spirosmag/documents/AlgoPlus/src/classes/hash_table/hash_table.h /Users/spirosmag/documents/AlgoPlus/src/classes/heap/min_heap.h /Users/spirosmag/documents/AlgoPlus/src/classes/list/circular_linked_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/list/doubly_linked_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/list/frequency_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/list/linked_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/list/skip_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/queue/dequeue_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/stack/stack_list.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/234_tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/avl_tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/bst.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/interval_tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/red_black_tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/splay_tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/tree.h /Users/spirosmag/documents/AlgoPlus/src/classes/tree/trie.h /Users/spirosmag/documents/AlgoPlus/src/include/algoplus.h /Users/spirosmag/documents/AlgoPlus/src/linalg/mat_1d.h /Users/spirosmag/documents/AlgoPlus/src/linalg/mat_2d.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/clustering/DBSCAN/dbscan.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/clustering/kmeans/kmeans.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/edge_detection/prewitt.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/edge_detection/sobel_operator.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/encoders/huffman_encoding.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/filters/average_filter.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/filters/median_filter.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/filters/sharpening_filter.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/image.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/morphology/operations.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/image/point_detection/laplacian_point_detect.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/regression/linear_regression/lin_reg.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/regression/polynomial_regression/poly_reg.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/search_algorithms/AStar/astar.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/search_algorithms/best_first/best_first.h /Users/spirosmag/documents/AlgoPlus/src/machine_learning/search_algorithms/hill_climbing/hill_climbing.h /Users/spirosmag/documents/AlgoPlus/src/visualization/graph_visual/graph_visualization.h /Users/spirosmag/documents/AlgoPlus/src/visualization/list_visual/linked_list_visualization.h /Users/spirosmag/documents/AlgoPlus/src/visualization/tree_visual/tree_visualization.h

run-clang-tidy: CMakeFiles/run-clang-tidy
run-clang-tidy: CMakeFiles/run-clang-tidy.dir/build.make
.PHONY : run-clang-tidy

# Rule to build all files generated by this target.
CMakeFiles/run-clang-tidy.dir/build: run-clang-tidy
.PHONY : CMakeFiles/run-clang-tidy.dir/build

CMakeFiles/run-clang-tidy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run-clang-tidy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run-clang-tidy.dir/clean

CMakeFiles/run-clang-tidy.dir/depend:
	cd /Users/spirosmag/documents/AlgoPlus/tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spirosmag/documents/AlgoPlus /Users/spirosmag/documents/AlgoPlus /Users/spirosmag/documents/AlgoPlus/tests /Users/spirosmag/documents/AlgoPlus/tests /Users/spirosmag/documents/AlgoPlus/tests/CMakeFiles/run-clang-tidy.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/run-clang-tidy.dir/depend

