
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-autorace-camera, turtlebot3-autorace-control, turtlebot3-autorace-core, turtlebot3-autorace-detect }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-autorace";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/turtlebot3_autorace/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "1e9063e4da91e347177fe176cdcdea7510bd47e555bada4446679354de1b53ff";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-control turtlebot3-autorace-core turtlebot3-autorace-detect ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutoRace ROS packages for AutoRace with TurtleBot3 (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
