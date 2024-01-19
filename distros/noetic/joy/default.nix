
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, linuxConsoleTools, rosbag, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/joy/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "d09ea880713158e4a7455a892bd618e1c8d2b634cc9fa5d03b7cf9cf73e1ad0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
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
