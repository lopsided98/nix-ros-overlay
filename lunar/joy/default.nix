
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, linuxConsoleTools, catkin, sensor-msgs, diagnostic-updater, roscpp }:
buildRosPackage {
  pname = "ros-lunar-joy";
  version = "1.12.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/joystick_drivers-release/archive/release/lunar/joy/1.12.0-0.tar.gz;
    sha256 = "071917249110b9e5245978b5a05d084b889856c3d6a2500c3ac0eb9cfcc045fe";
  };

  buildInputs = [ diagnostic-updater linuxConsoleTools sensor-msgs roscpp ];
  checkInputs = [ rosbag ];
  propagatedBuildInputs = [ diagnostic-updater linuxConsoleTools sensor-msgs roscpp ];
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
