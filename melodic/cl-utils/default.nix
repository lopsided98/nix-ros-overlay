
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-utils";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_utils/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "d481e48d5fb6872e3be0fd8ec67fdcf061299f7e5153e3edbf7dc0b33f3343b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
