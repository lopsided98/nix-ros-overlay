
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, robot-state-publisher, flir-ptu-description, catkin, rviz, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-flir-ptu-viz";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/flir_ptu_viz/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "69ef0ddc42c87f5c334d9671dcc2d89a69149277bf8e6efcf984fa9062cbe779";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher rviz flir-ptu-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles and rviz configs to assist with visualizing the FLIR PTUs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
