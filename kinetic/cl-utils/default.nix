
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-kinetic-cl-utils";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_utils/0.2.11-1.tar.gz;
    sha256 = "4c09c725227d1bd2f6091ef86f6b2baa1c70d799d948cc5d7479b48e4936a0c5";
  };

  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
