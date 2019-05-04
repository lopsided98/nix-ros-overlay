
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz-imu-plugin, roch-description, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-roch-viz";
  version = "2.0.10";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_viz-release/archive/release/kinetic/roch_viz/2.0.10-0.tar.gz;
    sha256 = "3a6a0cd994f5a9974bb6581097565f0d38835fe6f44ccc0d9dec961d2254f680";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rviz-imu-plugin roch-description rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for SawYer roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
