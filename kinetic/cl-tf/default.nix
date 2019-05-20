
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, tf, cl-transforms-stamped }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf/0.2.11-1.tar.gz;
    sha256 = "50c497c80771e7d752ae432d641e4d126e59c64ec71644b0a2d5f9a5f09c2f63";
  };

  propagatedBuildInputs = [ tf roslisp cl-transforms cl-transforms-stamped ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
