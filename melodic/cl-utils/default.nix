
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sbcl }:
buildRosPackage {
  pname = "ros-melodic-cl-utils";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_utils/0.2.11-1.tar.gz;
    sha256 = "2c46beef0097cb671d5cda59d121f5c711055ccbad85c893827b1d78af44ade4";
  };

  propagatedBuildInputs = [ sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Lisp utility libraries'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
