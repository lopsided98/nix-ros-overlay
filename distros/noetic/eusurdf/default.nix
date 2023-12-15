
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, python3Packages, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-eusurdf";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/eusurdf/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "ad87f0f2c6612ab871b380e767c33ee36d9e17b6e3272a0ccd634e620d29bfff";
  };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros python3Packages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
