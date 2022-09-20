
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catch-ros, catkin, cmake-modules, diagnostic-msgs, libyamlcpp, ncurses, python, pythonPackages, rosbash, roscpp, rosfmt, roslib, rosmon-msgs, rospack, rostest, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-rosmon-core";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosmon-release/archive/release/melodic/rosmon_core/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "9e919083967cc7d7859ede0342cb2a26d19ce8c01504b047f6688bff640835c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin python ];
  checkInputs = [ catch-ros pythonPackages.rospkg rostest ];
  propagatedBuildInputs = [ boost cmake-modules diagnostic-msgs libyamlcpp ncurses rosbash roscpp rosfmt roslib rosmon-msgs rospack std-msgs tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node launcher and monitor for ROS. rosmon is a replacement
		for the roslaunch tool, focused on performance, remote
		monitoring, and usability.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
