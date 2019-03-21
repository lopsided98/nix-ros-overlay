
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf2, roslisp-utilities, cl-transforms, cl-transforms-stamped, cl-tf, cl-utils, cl-urdf }:
buildRosPackage {
  pname = "ros-melodic-roslisp-common";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_common/0.2.10-0.tar.gz;
    sha256 = "08017837c37e5b4edb4a27ebe6c26b7468afca2ce261104cdbf22df54d044491";
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
