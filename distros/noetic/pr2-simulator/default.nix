
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-configuration-gazebo, pr2-gazebo, pr2-gazebo-plugins }:
buildRosPackage {
  pname = "ros-noetic-pr2-simulator";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/pr2_simulator/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0763e5edcd2d1434193a0386d06a5d296e2d8bd11528523a8e6913828447ae8f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controller-configuration-gazebo pr2-gazebo pr2-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_simulator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
