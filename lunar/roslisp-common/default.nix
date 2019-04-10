
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf2, roslisp-utilities, cl-transforms, cl-transforms-stamped, cl-tf, cl-utils, cl-urdf }:
buildRosPackage {
  pname = "ros-lunar-roslisp-common";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/roslisp_common/0.2.10-0.tar.gz;
    sha256 = "0c83afcc275fc5be553347e4a5e573bf8dc7dd464cccc7508fe9e9a5fe4d2fa5";
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
