
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jskeus, actionlib-msgs, actionlib, tf, actionlib-tutorials, geometry-msgs, rosbash, message-generation, roslang, message-runtime, angles, coreutils, std-srvs, rospack, mk, rosmsg, rosbuild, catkin, tf2-ros, xorg, std-msgs, roscpp, visualization-msgs, euslisp, rosnode, geneus, sensor-msgs, rostest, rostopic, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/lunar/roseus/1.7.4-0.tar.gz;
    sha256 = "0d273c27dfc94f510e33ad503523d5b1e5f2f3a5cb06ac68583aeca74cda1026";
  };

  buildInputs = [ jskeus actionlib-msgs actionlib tf actionlib-tutorials geometry-msgs rosbash message-generation roslang angles coreutils std-srvs rospack mk rosmsg rosbuild tf2-ros std-msgs roscpp visualization-msgs euslisp rosnode geneus sensor-msgs rostest rostopic dynamic-reconfigure ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ jskeus actionlib-msgs actionlib dynamic-reconfigure tf actionlib-tutorials geometry-msgs rosbash message-runtime roslang std-srvs rospack rosmsg tf2-ros std-msgs roscpp visualization-msgs euslisp rosnode sensor-msgs rostest geneus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
