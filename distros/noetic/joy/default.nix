
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, linuxConsoleTools, rosbag, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/joy/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "8a0d5118f416ecf37c66b55bf5618475e8ea6305190ac71271fd42a6b909b9ae";
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
