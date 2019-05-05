
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-lisp, catkin, roslisp, cl-transforms-stamped, cl-utils }:
buildRosPackage {
  pname = "ros-lunar-cl-tf2";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_tf2/0.2.10-0.tar.gz;
    sha256 = "7d233f75d6b85291bfc92b2193e193bb9834cfa029d0df3d14ff36d5f887968e";
  };

  propagatedBuildInputs = [ tf2-msgs actionlib-lisp roslisp cl-transforms-stamped cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
