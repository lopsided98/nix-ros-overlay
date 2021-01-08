
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-kinetic-cl-utils";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_utils/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "b5f60d4d6dc6c56fcd2a164af52098b0d7be489ed93795c4bfd6719788defd07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
