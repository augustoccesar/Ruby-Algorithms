module Algorithms
    class MergeSort
        def self.run(vet, options = {})
            if(options[:new_list] && options[:new_list] == true)
                return merge_sort(vet)
            else
                vet.replace(merge_sort(vet))
                return nil
            end
        end

        private

        def self.merge(vet_a, vet_b)
            vet_c = []

            while !vet_a.empty? && !vet_b.empty?
                if vet_a[0] > vet_b[0]
                    vet_c << vet_b[0]
                    vet_b.delete_at(0)
                else
                    vet_c << vet_a[0]
                    vet_a.delete_at(0)
                end
            end

            while !vet_a.empty?
                vet_c << vet_a[0]
                vet_a.delete_at(0)
            end

            while !vet_b.empty?
                vet_c << vet_b[0]
                vet_b.delete_at(0)
            end

            return vet_c
        end

        def self.merge_sort(vet)
            n = vet.size
            return vet if n == 1

            vet_a = vet[0..(n/2)-1]
            vet_b = vet[(n/2), n]

            vet_a = merge_sort(vet_a)
            vet_b = merge_sort(vet_b)

            return merge(vet_a, vet_b)
        end
    end
end