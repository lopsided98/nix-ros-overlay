
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, libusb1, diagnostic-updater, robot-state-publisher, dynamic-reconfigure, roslaunch, roscpp, libusb, xacro }:
buildRosPackage {
  pname = "ros-lunar-sick-tim";
  version = "0.0.15";

  src = fetchurl {
    url = https://github.com/uos-gbp/sick_tim-release/archive/release/lunar/sick_tim/0.0.15-0.tar.gz;
    sha256 = "ace6beb1e31ef09315bed0c633658a1b7fde6c06bce38fb32ed85de99c1c8dcd";
  };

  buildInputs = [ sensor-msgs libusb1 diagnostic-updater dynamic-reconfigure roslaunch roscpp ];
  propagatedBuildInputs = [ sensor-msgs libusb1 diagnostic-updater robot-state-publisher dynamic-reconfigure roscpp libusb xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
