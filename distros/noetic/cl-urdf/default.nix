
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-noetic-cl-urdf";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_urdf/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "41abfb6b2a67bb3c43034ef5fecd9d1a4a6e7f27f92455bf5519c0528c786415";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-transforms roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
