
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, turtlebot3-description, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-jderobot-assets";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/melodic/jderobot_assets/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b9ab9560902ce44eff68f2b917a964d6b9e34a627924ba34d099d4b06d27fea3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros roscpp turtlebot3-description turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
