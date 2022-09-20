
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmon-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "32ee0a1cbb51b6143ae74d61e0d2947dd3d37ab47170862619960c83e5328dd1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for rosmon, the node launcher and monitor for ROS.
		rosmon is a replacement for the roslaunch tool, focused on performance,
		remote monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
