
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-tf, cl-tf2, cl-transforms, cl-transforms-stamped, cl-urdf, cl-utils, roslisp-utilities }:
buildRosPackage {
  pname = "ros-noetic-roslisp-common";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/roslisp_common/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "9d032a748c483285565390cdeb4a534ed9c660c93d65417bed5a52a918e34f5e";
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
