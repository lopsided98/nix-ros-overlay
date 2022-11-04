
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, actionlib-tutorials, angles, catkin, coreutils, dynamic-reconfigure, euslisp, geneus, geometry-msgs, jskeus, message-generation, message-runtime, mk, rosbash, rosbuild, roscpp, roslang, rosmsg, rosnode, rospack, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs, xorg }:
buildRosPackage {
  pname = "ros-melodic-roseus";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "02ba052b195e8a7bc3f83807425b5293a11b32283f7d8f5673ad742bc41e8c20";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin coreutils message-generation mk rosbuild rostopic ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ actionlib actionlib-msgs actionlib-tutorials dynamic-reconfigure euslisp geneus geometry-msgs jskeus message-runtime rosbash roscpp roslang rosmsg rosnode rospack rostest sensor-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
