
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-transforms-stamped, cl-utils, roslisp, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-cl-tf2";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_tf2/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "2178ba1c487b3a50653184b6998294d887a0a44d0af459fa59d439d77d487686";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-lisp cl-transforms-stamped cl-utils roslisp tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
