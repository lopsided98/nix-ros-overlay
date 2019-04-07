
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jskeus, actionlib-msgs, actionlib, tf, actionlib-tutorials, geometry-msgs, rosbash, message-generation, roslang, message-runtime, angles, coreutils, std-srvs, rospack, mk, rosmsg, rosbuild, catkin, tf2-ros, xorg, std-msgs, roscpp, visualization-msgs, euslisp, rosnode, geneus, sensor-msgs, rostest, rostopic, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.7.4-0.tar.gz;
    sha256 = "8ab0dcb03250d2298e93e3d05f06e3e539c839b0c116ba8e0521461045e87294";
  };

  buildInputs = [ jskeus std-srvs rospack actionlib-msgs mk rosmsg rosbuild tf2-ros actionlib std-msgs dynamic-reconfigure roscpp tf actionlib-tutorials euslisp rosnode geneus visualization-msgs geometry-msgs rosbash sensor-msgs rostest message-generation roslang rostopic angles coreutils ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ jskeus std-srvs rospack actionlib-msgs rosmsg tf2-ros actionlib std-msgs roscpp tf actionlib-tutorials euslisp rosnode geneus visualization-msgs geometry-msgs rosbash sensor-msgs rostest message-runtime roslang dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    #license = lib.licenses.BSD;
  };
}
