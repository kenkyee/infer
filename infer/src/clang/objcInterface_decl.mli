(*
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

(** In this module an ObjC interface declaration is processed. The class  *)
(** is saved in the tenv as a struct with the corresponding fields, potential superclass and *)
(** list of defined methods *)
open CFrontend_utils

val interface_declaration : Ast_utils.type_ptr_to_sil_type -> Sil.tenv -> Clang_ast_t.decl ->
  Sil.typ

val interface_impl_declaration : Ast_utils.type_ptr_to_sil_type -> Sil.tenv -> Clang_ast_t.decl ->
  Sil.typ

val is_pointer_to_objc_class : Sil.tenv -> Sil.typ -> bool

val get_curr_class : string -> Clang_ast_t.obj_c_interface_decl_info -> CContext.curr_class

val get_curr_class_impl : Clang_ast_t.obj_c_implementation_decl_info -> CContext.curr_class
