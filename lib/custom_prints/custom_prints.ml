let rec print_list print_elem list = 
  match list with
  | [] -> print_endline ""
  | head :: tail -> 
    print_elem head; print_string "; "; 
    print_list print_elem tail
;;


let rec print_dict d = 
  match d with
  | [] -> ()
  | (key, value) :: rest ->
    Printf.printf "%s: %d\n" key value;
    print_dict rest;
;;


let rec print_expr expr =
  match expr with
  | Simplify_eq.Const n -> 
    Printf.printf "Const(";
    print_int n;
    Printf.printf ")";
  | Simplify_eq.Var s ->
    Printf.printf "Var(";
    print_string s;
    Printf.printf ")";
  | Simplify_eq.Add (e1, e2) ->
      Printf.printf "Add(";
      print_expr e1;
      Printf.printf ", ";
      print_expr e2;
      Printf.printf ")";
  | Simplify_eq.Sub (e1, e2) ->
    Printf.printf "Sub(";
    print_expr e1;
    Printf.printf ", ";
    print_expr e2;
    Printf.printf ")";
  | Simplify_eq.Mul (e1, e2) ->
    Printf.printf "Mul(";
    print_expr e1;
    Printf.printf ", ";
    print_expr e2;
    Printf.printf ")";
  | Simplify_eq.Div (e1, e2) ->
    Printf.printf "Div(";
    print_expr e1;
    Printf.printf ", ";
    print_expr e2;
    Printf.printf ")";
  | Simplify_eq.Let (var, value, exp) ->
    Printf.printf "Let ";
    print_expr var;
    Printf.printf " = ";
    print_expr value;
    Printf.printf " in ";
    print_expr exp;
;;


let rec print_inorder_btree b =
  match b with
  | Binary_tree.Empty -> ()
  | Binary_tree.Node (v, l, r) ->
      print_inorder_btree l;
      print_int v;
      Printf.printf ", ";
      print_inorder_btree r;
;;

let print_zip print_elem_1 print_elem_2 list =
  print_string "[";
  let rec aux list = 
    match list with
    | [] -> ()
    | (x, y) :: rest ->
        print_string "(";
        print_elem_1 x;
        print_string ", ";
        print_elem_2 y;
        print_string "); ";
        aux rest
  in
  aux list;
  print_endline "]"
;;