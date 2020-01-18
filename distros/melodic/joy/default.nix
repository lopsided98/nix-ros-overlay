
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, linuxConsoleTools, rosbag, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joy";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/joy/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "369447b7b00655bd9ff8e267b40084009a5bafedaf748f5265b3fa7a8ac27fa6";
  };

  buildType = "catkin";
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
