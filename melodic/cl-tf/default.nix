
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, tf, cl-transforms-stamped }:
buildRosPackage {
  pname = "ros-melodic-cl-tf";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "53c3fc04760efac2a3158663f7c6fe4cfe74533606c9337cfb602afdc19d082d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf roslisp cl-transforms cl-transforms-stamped ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
