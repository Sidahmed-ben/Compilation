open Ast
open Mips
module Env = Map.Make(String)


let _types_ =
  Env.of_seq
    (List.to_seq
       [ "_add",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_sub",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_mul",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_div",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_inf",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_sup",  Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_egal", Func_t (Int_t(Int_t,true), [ Int_t(Int_t,true) ; Int_t(Int_t,true) ])
       ; "_puts", Func_t (Void_t, [Str_t])
       ; "_geti", Func_t (Int_t(Int_t,true), [])
       ; "_puti", Func_t (Void_t, [Int_t(Int_t,true)])

    ])


let builtins =
  [ 
  
  Label "_inf"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Slt(V0, T1 , T0)
  ; Jr RA

  ; Label "_sup"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Slt(V0, T0 , T1)
  ; Jr RA


  ; Label "_egal"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Addi (SP, SP, -4)
  ; Sw (RA, Mem (SP, 0))
  ; Sub(V0,T0,T1)
  ; Beqz(V0,"zero")  
  ; Li(V0,0)
  ; Jal("fin_egal")
  ; Label("zero")
  ; Li(V0,1)
  ; Jal("fin_egal")
  ; Label ("fin_egal")
  ; Lw (RA, Mem (SP, 0))
  ; Addi (SP, SP, 4)
  ; Jr (RA)


  ; Label "_add"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Add (V0, T0, T1)
  ; Jr RA

  ; Label "_sub"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Sub (V0, T1, T0)
  ; Jr RA
      
  ; Label "_mul"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Mul (V0, T0, T1)
  ; Jr RA

  ; Label "_div"
  ; Lw (T0, Mem (SP, 0))
  ; Lw (T1, Mem (SP, 4))
  ; Div  (V0,T1, T0)
  (* ; Mflo (V0) *)
  ; Jr RA
      

  ; Label "_puti"
  ; Lw (A0, Mem (SP, 0))
  ; Li (V0, Syscall.print_int)
  ; Syscall
  ; Jr RA

  ; Label "_geti"
  (* ; Lw (A0, Mem (SP, 0)) *)
  ; Li (V0, Syscall.read_int)
  ; Syscall
  ; Jr RA

  ; Label "_puts"
  ; Lw (A0, Mem (SP, 0))
  ; Li (V0, Syscall.print_str)
  ; Syscall
  ; Jr RA
  ]

