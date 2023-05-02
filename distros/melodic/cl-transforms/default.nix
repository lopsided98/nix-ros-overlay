
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-utils, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "5e9b33b72f51ecca34c2d83030aa8b5916771d65061283439f87b081a2090200";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-utils sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
