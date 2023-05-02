
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-utils";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_utils/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "56fa884c5f5ef5f241a04e8af6f94344522bd7d80318ca5113d49937e63ad019";
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
