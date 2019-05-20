
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms/0.2.11-1.tar.gz;
    sha256 = "110993f2f88626bd5728fdfbd419ac9692f5cfffdbab8bd0a1a8e109b673acb2";
  };

  propagatedBuildInputs = [ sbcl cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
