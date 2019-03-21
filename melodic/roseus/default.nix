
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jskeus, actionlib-msgs, actionlib, tf, actionlib-tutorials, geometry-msgs, rosbash, message-generation, message-runtime, roslang, angles, coreutils, std-srvs, rospack, mk, rosmsg, rosbuild, catkin, tf2-ros, xorg, std-msgs, roscpp, visualization-msgs, euslisp, rosnode, geneus, sensor-msgs, rostest, rostopic, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus/1.7.4-0.tar.gz;
    sha256 = "e68ad89c7896f6b30f8a8dea7b8a0216dc5bfad5988cf8f287dd148069f5ccd1";
  };

  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ jskeus std-srvs rospack actionlib-msgs rosmsg tf2-ros actionlib std-msgs roscpp tf actionlib-tutorials euslisp rosnode geneus visualization-msgs geometry-msgs rosbash sensor-msgs rostest message-runtime roslang dynamic-reconfigure ];
  nativeBuildInputs = [ jskeus std-srvs rospack actionlib-msgs mk rosmsg rosbuild catkin tf2-ros actionlib std-msgs dynamic-reconfigure roscpp tf actionlib-tutorials euslisp rosnode geneus visualization-msgs geometry-msgs rosbash sensor-msgs rostest message-generation roslang rostopic angles coreutils ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    #license = lib.licenses.BSD;
  };
}
