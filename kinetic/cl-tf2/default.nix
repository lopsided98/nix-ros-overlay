
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-lisp, catkin, roslisp, cl-transforms-stamped, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf2";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf2/0.2.10-0.tar.gz;
    sha256 = "1f1c7cc80ac8b3ff1edb65ce0f026f9be9347e9dfbe65423c4bed7f7da36fb41";
  };

  propagatedBuildInputs = [ tf2-msgs actionlib-lisp roslisp cl-transforms-stamped cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
