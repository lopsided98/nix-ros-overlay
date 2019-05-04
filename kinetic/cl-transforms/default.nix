
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl, cl-utils }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms/0.2.10-0.tar.gz;
    sha256 = "1d3121eb0dc2b25e11ada5b478ab26f274e905faf28bf2f5a091256ebe084a69";
  };

  propagatedBuildInputs = [ sbcl cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
