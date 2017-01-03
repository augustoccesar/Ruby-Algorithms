require 'test/unit'

require_relative '../lib/algorithms'

module Algorithms
    class AlgorithmsTest < Test::Unit::TestCase
        def setup
            @unordered_vet   = [1, 6, 2, 5, 10, 9, 8, 7]
            @ordered_vet     = [1, 2, 5, 6, 7, 8, 9, 10]
        end

        # Insertion Sort

        def test_insertion_sort
            vet             = @unordered_vet
            new_vet         = Algorithms.insertion_sort(vet)

            assert_equal(@ordered_vet, new_vet)
            assert_equal(@unordered_vet, vet)
        end

        def test_insertion_sort!
            vet             = @unordered_vet
            new_vet         = Algorithms.insertion_sort!(vet)

            assert_equal(nil, new_vet)
            assert_equal(@ordered_vet, vet)
        end

        # Selection Sort

        def test_selection_sort
            vet             = @unordered_vet
            new_vet         = Algorithms.selection_sort(vet)

            assert_equal(@ordered_vet, new_vet)
            assert_equal(@unordered_vet, vet)
        end

        def test_selection_sort!
            vet             = @unordered_vet
            new_vet         = Algorithms.selection_sort!(vet)

            assert_equal(nil, new_vet)
            assert_equal(@ordered_vet, vet)
        end

        # Quick Sort

        def test_quick_sort
            vet             = @unordered_vet
            new_vet         = Algorithms.quick_sort(vet)

            assert_equal(@ordered_vet, new_vet)
            assert_equal(@unordered_vet, vet)
        end

        def test_quick_sort!
            vet             = @unordered_vet
            new_vet         = Algorithms.quick_sort!(vet)

            assert_equal(nil, new_vet)
            assert_equal(@ordered_vet, vet)
        end

        # Merge Sort

        def test_merge_sort
            vet             = @unordered_vet
            new_vet         = Algorithms.merge_sort(vet)

            assert_equal(@ordered_vet, new_vet)
            assert_equal(@unordered_vet, vet)
        end

        def test_merge_sort!
            vet             = @unordered_vet
            new_vet         = Algorithms.merge_sort!(vet)

            assert_equal(nil, new_vet)
            assert_equal(@ordered_vet, vet)
        end
    end
end