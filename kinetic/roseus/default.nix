
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, rosbash, actionlib-msgs, rosbuild, rostest, geneus, sensor-msgs, dynamic-reconfigure, rosmsg, rostopic, coreutils, actionlib-tutorials, tf2-ros, xorg, std-msgs, std-srvs, catkin, euslisp, roscpp, roslang, angles, message-generation, jskeus, mk, rosnode, actionlib, visualization-msgs, message-runtime, rospack }:
buildRosPackage {
  pname = "ros-kinetic-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "8ab0dcb03250d2298e93e3d05f06e3e539c839b0c116ba8e0521461045e87294";
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
