
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf2, roslisp-utilities, cl-utils, cl-transforms, cl-tf, cl-transforms-stamped, cl-urdf }:
buildRosPackage {
  pname = "ros-melodic-roslisp-common";
  version = "0.2.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_common/0.2.12-1.tar.gz;
    sha256 = "f21f8982fd0069e1ee3f3611877153b9b675d57b019649f9c079d6c9251a57fd";
  };

  propagatedBuildInputs = [ actionlib-lisp cl-tf2 roslisp-utilities cl-transforms cl-transforms-stamped cl-tf cl-utils cl-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common libraries to control ROS based robots. This stack contains
    an implementation of actionlib (client and server) in Common Lisp,
    a transformation library and an implementation of tf in Common
    Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
