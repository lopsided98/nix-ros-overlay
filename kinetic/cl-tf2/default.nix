
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-lisp, catkin, roslisp, cl-transforms-stamped, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf2";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf2/0.2.11-1.tar.gz;
    sha256 = "102b5fac639aa05b7a7f506585174491918f12625aedc931d5dda94bdd022835";
  };

  propagatedBuildInputs = [ tf2-msgs actionlib-lisp roslisp cl-transforms-stamped cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
