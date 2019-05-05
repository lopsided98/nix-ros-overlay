
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, tf, cl-transforms-stamped }:
buildRosPackage {
  pname = "ros-lunar-cl-tf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_tf/0.2.10-0.tar.gz;
    sha256 = "978cd2c2c6dc7c6dc35b1c9f1029e12e78dafc4a95797ed94a566b30809d462f";
  };

  propagatedBuildInputs = [ tf roslisp cl-transforms cl-transforms-stamped ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
