
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf2, roslisp-utilities, cl-transforms, cl-transforms-stamped, cl-tf, cl-utils, cl-urdf }:
buildRosPackage {
  pname = "ros-kinetic-roslisp-common";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/roslisp_common/0.2.10-0.tar.gz;
    sha256 = "12d03daffc3d3d13471568f9e2edaf467cf0135536e17effb3a11239534ea6e8";
  };

  propagatedBuildInputs = [ cl-transforms cl-transforms-stamped cl-tf actionlib-lisp cl-tf2 roslisp-utilities cl-utils cl-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common libraries to control ROS based robots. This stack contains
    an implementation of actionlib (client and server) in Common Lisp,
    a transformation library and an implementation of tf in Common
    Lisp.'';
    #license = lib.licenses.BSD;
  };
}
