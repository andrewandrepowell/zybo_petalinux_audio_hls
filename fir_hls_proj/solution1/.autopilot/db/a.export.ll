; ModuleID = '/opt/Xilinx/Projects/zybo_petalinux_audio_hls/fir_hls_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@fir1_shift_reg = internal unnamed_addr global [31 x i32] zeroinitializer
@fir_str = internal unnamed_addr constant [4 x i8] c"fir\00"
@c = internal unnamed_addr constant [32 x i15] [i15 -3, i15 -19, i15 -72, i15 -196, i15 -426, i15 -767, i15 -1165, i15 -1483, i15 -1506, i15 -991, i15 240, i15 2205, i15 4696, i15 7294, i15 9460, i15 10693, i15 10693, i15 9460, i15 7294, i15 4696, i15 2205, i15 240, i15 -991, i15 -1506, i15 -1483, i15 -1165, i15 -767, i15 -426, i15 -196, i15 -72, i15 -19, i15 -3]
@p_str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"BUS_A\00", align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define internal fastcc i32 @"fir_operator()"(i32 %x) nounwind uwtable align 2 {
  %x_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x) nounwind
  br label %1

; <label>:1                                       ; preds = %6, %0
  %i = phi i6 [ 31, %0 ], [ %i_1, %6 ]
  %acc = phi i32 [ 0, %0 ], [ %acc_1, %6 ]
  %i_cast = sext i6 %i to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i, i32 5)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  br i1 %tmp, label %7, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str3) nounwind
  %tmp_2 = icmp eq i6 %i, 0
  br i1 %tmp_2, label %3, label %4

; <label>:3                                       ; preds = %2
  store i32 %x_read, i32* getelementptr inbounds ([31 x i32]* @fir1_shift_reg, i64 0, i64 0), align 16
  br label %6

; <label>:4                                       ; preds = %2
  %tmp_3 = add i6 %i, -1
  %tmp_4 = zext i6 %tmp_3 to i64
  %fir1_shift_reg_addr = getelementptr [31 x i32]* @fir1_shift_reg, i64 0, i64 %tmp_4
  %m = load i32* %fir1_shift_reg_addr, align 4
  %tmp_5 = icmp eq i6 %i, 31
  br i1 %tmp_5, label %._crit_edge, label %5

; <label>:5                                       ; preds = %4
  %tmp_6 = zext i32 %i_cast to i64
  %fir1_shift_reg_addr_1 = getelementptr [31 x i32]* @fir1_shift_reg, i64 0, i64 %tmp_6
  store i32 %m, i32* %fir1_shift_reg_addr_1, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %4
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %3
  %m1 = phi i32 [ %x_read, %3 ], [ %m, %._crit_edge ]
  %tmp_7 = zext i32 %i_cast to i64
  %c_addr = getelementptr [32 x i15]* @c, i64 0, i64 %tmp_7
  %c_load = load i15* %c_addr, align 2
  %CFir_c_load_cast = sext i15 %c_load to i32
  %tmp_8 = mul nsw i32 %CFir_c_load_cast, %m1
  %acc_1 = add nsw i32 %tmp_8, %acc
  %i_1 = add i6 %i, -1
  br label %1

; <label>:7                                       ; preds = %1
  ret i32 %acc
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @fir(i32* %input_val, i32* %output_val) nounwind uwtable {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_val) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_val) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @fir_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_val, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_val, [10 x i8]* @p_str, i32 1, i32 1, i32 0, i32 0, [6 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [6 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2) nounwind
  %input_val_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %input_val) nounwind
  %tmp = call fastcc i32 @"fir_operator()"(i32 %input_val_read)
  %tmp_3 = call i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32 %tmp, i32 16, i32 31)
  %tmp_1 = sext i16 %tmp_3 to i32
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %output_val, i32 %tmp_1) nounwind
  ret void
}

define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i16
  ret i16 %empty_4
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_5 = shl i6 1, %empty
  %empty_6 = and i6 %0, %empty_5
  %empty_7 = icmp ne i6 %empty_6, 0
  ret i1 %empty_7
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}

!0 = metadata !{void (i32*, i32*)* @fir, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int32_t*", metadata !"int32_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input_val", metadata !"output_val"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{metadata !20, [1 x i32]* @llvm_global_ctors_0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"llvm.global_ctors.0", metadata !24, metadata !"", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"input_val", metadata !24, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"output_val", metadata !24, metadata !"int", i32 0, i32 31}
