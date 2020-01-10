
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-transforms-stamped, cl-utils, roslisp, tf2-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf2";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf2/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "1caf596a067313c1a43dfb5f289e6dec64a468ed37f3f08ba05edaaf16983a8d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-lisp cl-transforms-stamped cl-utils roslisp tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
