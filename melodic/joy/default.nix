
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, linuxConsoleTools, catkin, sensor-msgs, diagnostic-updater, roscpp }:
buildRosPackage {
  pname = "ros-melodic-joy";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/joy/1.12.0-0.tar.gz;
    sha256 = "b2942c8164aec9fee0c21d0cb7f8c1e77c3e5e555b10489024e3795de272c600";
  };

  checkInputs = [ rosbag ];
  propagatedBuildInputs = [ diagnostic-updater linuxConsoleTools sensor-msgs roscpp ];
  nativeBuildInputs = [ diagnostic-updater catkin sensor-msgs linuxConsoleTools roscpp ];

  meta = {
    description = ''ROS driver for a generic Linux joystick.
    The joy package contains joy_node, a node that interfaces a
    generic Linux joystick to ROS. This node publishes a &quot;Joy&quot;
    message, which contains the current state of each one of the
    joystick's buttons and axes.'';
    #license = lib.licenses.BSD;
  };
}
