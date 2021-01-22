
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roch-description, roslaunch, rviz, rviz-imu-plugin }:
buildRosPackage {
  pname = "ros-kinetic-roch-viz";
  version = "2.0.10";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_viz-release/archive/release/kinetic/roch_viz/2.0.10-0.tar.gz";
    name = "2.0.10-0.tar.gz";
    sha256 = "3a6a0cd994f5a9974bb6581097565f0d38835fe6f44ccc0d9dec961d2254f680";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher roch-description rviz rviz-imu-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization configuration for SawYer roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
