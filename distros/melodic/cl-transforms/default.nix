
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-utils, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "2644bf9a6b816b70ca216290676f58e6d0b7d49c9b0d5f182928936f3aca9bd6";
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
