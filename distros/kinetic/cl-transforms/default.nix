
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-utils, sbcl }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "dc00a9e26b22246aa96de099ea605e3bdc8ab51e42ec8988f361c9188ae4d99a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-utils sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Homogeneous transform library for Common Lisp.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
