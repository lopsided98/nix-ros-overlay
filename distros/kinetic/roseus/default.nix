
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, actionlib-tutorials, angles, catkin, coreutils, dynamic-reconfigure, euslisp, geneus, geometry-msgs, jskeus, message-generation, message-runtime, mk, rosbash, rosbuild, roscpp, roslang, rosmsg, rosnode, rospack, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs, xorg }:
buildRosPackage {
  pname = "ros-kinetic-roseus";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "8ab0dcb03250d2298e93e3d05f06e3e539c839b0c116ba8e0521461045e87294";
  };

  buildType = "catkin";
  buildInputs = [ angles coreutils message-generation mk rosbuild rostopic ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ actionlib actionlib-msgs actionlib-tutorials dynamic-reconfigure euslisp geneus geometry-msgs jskeus message-runtime rosbash roscpp roslang rosmsg rosnode rospack rostest sensor-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
