
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf, cl-tf2, cl-transforms, cl-transforms-stamped, cl-urdf, cl-utils, roslisp-utilities }:
buildRosPackage {
  pname = "ros-melodic-roslisp-common";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/roslisp_common/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "2d1a6a9277285657352feaaa8d12df11b2ea29db437988236e2fdcdf9e353a92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-lisp cl-tf cl-tf2 cl-transforms cl-transforms-stamped cl-urdf cl-utils roslisp-utilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common libraries to control ROS based robots. This stack contains
    an implementation of actionlib (client and server) in Common Lisp,
    a transformation library and an implementation of tf in Common
    Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
