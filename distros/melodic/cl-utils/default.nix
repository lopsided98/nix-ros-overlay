
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-utils";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_utils/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "ea2af3623291b7e4e5b9a3f1b267cb13f27e474bebfe33d2da138992233500b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
