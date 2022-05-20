
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, python3Packages, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-eusurdf";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eusurdf/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "45ce43d84f15082ea736caa61f9bc71503b97b54e5c7c6f6b479eeb7f9bf4131";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros python3Packages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
