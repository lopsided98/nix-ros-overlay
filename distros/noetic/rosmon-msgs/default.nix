
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmon-msgs";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon_msgs/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "8c74faaf6ed0b29287802446e7968ec1a4e47f0d1723aec8afedcb10514cdd36";
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
