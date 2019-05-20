
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms }:
buildRosPackage {
  pname = "ros-melodic-cl-urdf";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_urdf/0.2.11-1.tar.gz;
    sha256 = "dbbf17e7c5009de686d5bc1d96d6c517145b7954cae31ab33e1195d362109333";
  };

  propagatedBuildInputs = [ roslisp cl-transforms ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
