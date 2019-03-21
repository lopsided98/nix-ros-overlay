
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms/0.2.10-0.tar.gz;
    sha256 = "cfb2f58621330690fb1aede02cff56e91d5c94b75e2a2a36d891521bfb718aa1";
  };

  propagatedBuildInputs = [ sbcl cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    #license = lib.licenses.BSD;
  };
}
