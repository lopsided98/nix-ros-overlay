
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-urdf-tutorial";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_tutorial-release/archive/release/noetic/urdf_tutorial/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "9bd0437ef9c76bd8493d9c3cdebad82bb9036a2d56fdce7c465b1673934b11ab";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a number of URDF tutorials.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
