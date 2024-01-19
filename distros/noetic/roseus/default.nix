
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, actionlib-tutorials, angles, catkin, coreutils, dynamic-reconfigure, euslisp, geneus, geometry-msgs, jskeus, message-generation, message-runtime, mk, rosbash, rosbuild, roscpp, roslang, rosmsg, rosnode, rospack, rostest, rostopic, sensor-msgs, shape-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs, xorg }:
buildRosPackage {
  pname = "ros-noetic-roseus";
  version = "1.7.5-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/noetic/roseus/1.7.5-2.tar.gz";
    name = "1.7.5-2.tar.gz";
    sha256 = "1d8a329f3b78ab84993338c9516cd1a326b50503e3fac2ca4938ed1664e0dc95";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin coreutils message-generation mk rosbuild rostopic ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ actionlib actionlib-msgs actionlib-tutorials dynamic-reconfigure euslisp geneus geometry-msgs jskeus message-runtime rosbash roscpp roslang rosmsg rosnode rospack rostest sensor-msgs shape-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
