require_relative 'algorithms/insertion_sort'
require_relative 'algorithms/quick_sort'
require_relative 'algorithms/merge_sort'

module Algorithms
    def self.insertion_sort(vet)
        Algorithms::InsertionSort.run(vet, {new_list: true})
    end

    def self.insertion_sort!(vet)
        Algorithms::InsertionSort.run(vet)
    end

    def self.quick_sort(vet)
        Algorithms::QuickSort.run(vet, {new_list: true})
    end

    def self.quick_sort!(vet)
        Algorithms::QuickSort.run(vet)
    end

    def self.merge_sort(vet)
        Algorithms::MergeSort.run(vet, {new_list: true})
    end

    def self.merge_sort!(vet)
        Algorithms::MergeSort.run(vet)
    end
end
