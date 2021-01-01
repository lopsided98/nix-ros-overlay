
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, linuxConsoleTools, rosbag, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/joy/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "95bd49cd5852d9a20d15d9dbd78ea46eed67a5b51b092b5bb053e74b920ca5bb";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rosbag ];
  propagatedBuildInputs = [ diagnostic-updater linuxConsoleTools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for a generic Linux joystick.
    The joy package contains joy_node, a node that interfaces a
    generic Linux joystick to ROS. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
