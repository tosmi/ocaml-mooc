type filesystem =
  (string * node) list
and node =
  | File
  | Dir of filesystem
  | Symlink of string list

let examplefs = [ "photos", Dir
			      [ "march", Dir
					   [ "photo_1.bmp", File ;
					     "photo_2.bmp", File ;
					     "photo_3.bmp", File ;
					     "index.html", File ] ;
				"april", Dir
					   [ "photo_1.bmp", File ;
					     "photo_2.bmp", File ;
					     "index.html", File ] ] ;
		  "videos", Dir
			      [ "video1.avi", File ;
				"video2.avi", File ;
				"video3.avi", File ;
				"video4.avi", File ;
				"best.avi", Symlink [ "video4.avi" ] ;
				"index.html", File ] ;
		  "indexes", Dir
			       [ "videos.html",
				 Symlink [ ".." ; "videos" ; "index.html" ] ;
				 "photos_march.html",
				 Symlink [ ".." ; "photos" ; "march" ; "index.html" ] ;
				 "photos_april.html",
				 Symlink [ ".." ; "photos" ; "april" ; "index.html" ] ;
				 "photos_may.html",
				 Symlink [ ".." ; "photos" ; "may" ; "index.html" ] ] ]
		  ;;

let rec print_path path =
  match path with
  | [] -> ()
  | [x] -> print_string x
  | x::xs -> print_string (x ^ "/"); print_path xs
;;

let rec print_file lvl name = match lvl with
  | 0 -> print_string name
  | _ -> print_string "|"; print_file (lvl-1) name
;;

let rec print_symlink lvl name path = match lvl with
  | 0 -> print_string (name ^ "->"); print_path path
  | _ -> print_string "|"; print_symlink (lvl-1) name path
;;

let rec print_dir lvl name = match lvl with
  | 0 -> print_string ("/" ^ name)
  | _ -> print_string "|"; print_dir (lvl-1) name
;;

let print_filesystem root =
  let rec print_filesystem lvl items =
    match items with
    | [] -> ()
    | x::xs -> match x with
      | (entry, Dir d) ->  print_dir lvl entry;  (* print_filesystem (lvl+1) d *)
      | (entry, File) -> print_file lvl entry; print_filesystem lvl xs
      | (entry, Symlink path) -> print_symlink 0 entry path
  in
  print_filesystem 0 root ;;

print_filesystem examplefs;;

let rec resolve sym path =
  (* This pre-completed structure is only here to help you.
     If it confuses you, don't hesitate to change it. *)
  let rec resolve acc path =
    "Replace this string with your implementation."  in
  resolve (List.tl (List.rev sym)) path ;;

let rec file_exists root path =
  "Replace this string with your implementation." ;;

(* move print_filesystem here for exercise 8 *)
