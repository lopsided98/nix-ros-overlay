
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosmon-msgs";
  version = "2.5.1-r2";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon_msgs/2.5.1-2.tar.gz";
    name = "2.5.1-2.tar.gz";
    sha256 = "d64fd909a64d8c995d333a6aeb96ff362f13567ccfca3c91fa24b021c907a2bc";
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
