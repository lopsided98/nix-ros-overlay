
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl, cl-utils }:
buildRosPackage {
  pname = "ros-lunar-cl-transforms";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_transforms/0.2.10-0.tar.gz;
    sha256 = "d9a51e544f1ab40c8fa745ea9b1896f511f51466c7b358c3cc06b85c450de7d2";
  };

  propagatedBuildInputs = [ sbcl cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
