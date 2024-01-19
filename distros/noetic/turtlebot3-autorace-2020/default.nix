
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-autorace-camera, turtlebot3-autorace-core, turtlebot3-autorace-detect, turtlebot3-autorace-driving, turtlebot3-autorace-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-2020";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_2020/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "0e67c30118a051aacb31f028ee65edee4aea5955ae5bc7a23bec053e7b4b11c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-core turtlebot3-autorace-detect turtlebot3-autorace-driving turtlebot3-autorace-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace 2020 ROS 1 packages (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
