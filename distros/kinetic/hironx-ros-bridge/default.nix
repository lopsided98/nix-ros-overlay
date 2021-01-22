
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, gnuplot, hrpsys-ros-bridge, mk, moveit-commander, openni2-launch, rosbash, rosbuild, roslang, roslib, roslint, rospy, tf, unzip }:
buildRosPackage {
  pname = "ros-kinetic-hironx-ros-bridge";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/hironx_ros_bridge/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "def7a3f70e8008f62b6e115c2e850a0951d6699b0c80f727b7a357bec0eae27d";
  };

  buildType = "catkin";
  buildInputs = [ mk rosbuild roslint unzip ];
  propagatedBuildInputs = [ control-msgs gnuplot hrpsys-ros-bridge moveit-commander openni2-launch rosbash roslang roslib rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-OpenRTM interfacing package for the opensource version of Kawada's Hiro/NEXTAGE dual-arm robot.

  NOTE: This package is multi-license -- pay attention to file header in each file where license is declared. For Creative Commons nc 4.0 applied, see <a href="http://creativecommons.org/licenses/by-nc/4.0">here</a>.

  <p>This package also contains some sensor driver software (as of April 2016 they are the following force sensors such as <a href="http://www.wacoh-tech.com/products/dynpick/wdf-6m200-3.html">Dynpick</a> and <a href="http://www.jr3.com/products.html">JR3</a>) for QNX. These drivers are stored in this robot-specific package for not many reasons than they are slightly customized for the robot. So if you can separate those as a standalone, generic package that'll be appreciated (please just let us know if you will).</p>'';
    license = with lib.licenses; [ bsdOriginal "CC-BY-SA-3.0" ];
  };
}
