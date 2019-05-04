
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, tf, cl-transforms-stamped }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf/0.2.10-0.tar.gz;
    sha256 = "9ac07c3088ca6e8c62d0b812c1b953a5a8f86f61100bae4845e130097490989e";
  };

  propagatedBuildInputs = [ tf roslisp cl-transforms cl-transforms-stamped ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
