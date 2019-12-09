
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, rosbash, actionlib-msgs, rosbuild, rostest, geneus, sensor-msgs, dynamic-reconfigure, rosmsg, rostopic, coreutils, actionlib-tutorials, tf2-ros, xorg, std-msgs, std-srvs, catkin, euslisp, roscpp, roslang, angles, message-generation, jskeus, mk, rosnode, actionlib, visualization-msgs, message-runtime, rospack }:
buildRosPackage {
  pname = "ros-melodic-roseus";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "02ba052b195e8a7bc3f83807425b5293a11b32283f7d8f5673ad742bc41e8c20";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs tf rosbash actionlib-msgs rosbuild geneus rostest sensor-msgs dynamic-reconfigure rosmsg rostopic coreutils actionlib-tutorials tf2-ros std-msgs std-srvs euslisp roscpp roslang angles message-generation jskeus mk rosnode actionlib visualization-msgs rospack ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ geometry-msgs tf rosbash actionlib-msgs geneus rostest sensor-msgs dynamic-reconfigure rosmsg actionlib-tutorials tf2-ros std-msgs std-srvs euslisp roscpp roslang jskeus rosnode actionlib visualization-msgs message-runtime rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
