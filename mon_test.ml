


let rec affiche_array ar =
  match ar with 
   | [] ->  Printf.fprintf Stdlib.stdout "qiw\n"
   | a::b -> Printf.fprintf Stdlib.stdout " %d " a ; affiche_array b


let () = 
  let a = ['a';'b';'c'] in

  let t =  String.of_seq (List.to_seq (a))  in
  Printf.fprintf Stdlib.stdout " %s " t

