
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-noetic-cl-urdf";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_urdf/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "944b01c1b35c64e060063235f339cf57c9e2c326ef7827055bb793be71d687b0";
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
