
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-ptu-description, joint-state-publisher, robot-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-flir-ptu-viz";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/melodic/flir_ptu_viz/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9664de1e3ea742650e24879c7efc5a54c89105249209645362c87b4b2c5952c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ flir-ptu-description joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles and rviz configs to assist with visualizing the FLIR PTUs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
