
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms/0.2.11-1.tar.gz;
    sha256 = "2da4cb75c27597bb2847615b4f3f13435763fa9c1457e0e035be66b8c4fb6a58";
  };

  propagatedBuildInputs = [ sbcl cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
