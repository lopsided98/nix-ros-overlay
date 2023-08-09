
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch-ros, catkin, cmake-modules, diagnostic-msgs, ncurses, python3, python3Packages, rosbash, roscpp, rosfmt, roslib, rosmon-msgs, rospack, rostest, std-msgs, tinyxml, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-rosmon-core";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/noetic/rosmon_core/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "b3bf928b65c486dc166ee27510dbdf079a9df8fb10986aa8340db7f952e43e21";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3 ];
  checkInputs = [ catch-ros python3Packages.rospkg rostest ];
  propagatedBuildInputs = [ boost cmake-modules diagnostic-msgs ncurses rosbash roscpp rosfmt roslib rosmon-msgs rospack std-msgs tinyxml yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
