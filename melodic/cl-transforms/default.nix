
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-utils, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "d77a7f302eba6656005c0bb83833f61d81c0f73ea3da5297b1f8cf6f23bfee23";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-utils sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
