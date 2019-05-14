
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, libusb1, diagnostic-updater, robot-state-publisher, dynamic-reconfigure, roslaunch, roscpp, libusb, xacro }:
buildRosPackage {
  pname = "ros-lunar-sick-tim";
  version = "0.0.16-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/sick_tim-release/archive/release/lunar/sick_tim/0.0.16-1.tar.gz;
    sha256 = "2bc0d9aa1d2260de388d826eb059172ed5887bfc3221bc116e5599039d407ea4";
  };

  buildInputs = [ sensor-msgs libusb1 diagnostic-updater dynamic-reconfigure roslaunch roscpp ];
  propagatedBuildInputs = [ sensor-msgs libusb1 diagnostic-updater robot-state-publisher dynamic-reconfigure roscpp libusb xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
