
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch-ros, catkin, cmake-modules, diagnostic-msgs, libyamlcpp, ncurses, python3, python3Packages, rosbash, roscpp, rosfmt, roslib, rosmon-msgs, rospack, rostest, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-rosmon-core";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon_core/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "de8c15525cefb38d9727a49a66f71f2da3b4bf31de94bd7057d6a80ab5ec8806";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3 ];
  checkInputs = [ catch-ros python3Packages.rospkg rostest ];
  propagatedBuildInputs = [ boost cmake-modules diagnostic-msgs libyamlcpp ncurses rosbash roscpp rosfmt roslib rosmon-msgs rospack std-msgs tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
