
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, libusb1, diagnostic-updater, robot-state-publisher, dynamic-reconfigure, roslaunch, roscpp, libusb, xacro }:
buildRosPackage {
  pname = "ros-kinetic-sick-tim";
  version = "0.0.15";

  src = fetchurl {
    url = https://github.com/uos-gbp/sick_tim-release/archive/release/kinetic/sick_tim/0.0.15-0.tar.gz;
    sha256 = "bc29bacd16e5bf8d0e4dc87901df882531115dd3c7608326c922f759bb4555fc";
  };

  buildInputs = [ sensor-msgs libusb1 diagnostic-updater dynamic-reconfigure roslaunch roscpp ];
  propagatedBuildInputs = [ sensor-msgs libusb1 diagnostic-updater robot-state-publisher dynamic-reconfigure roscpp libusb xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
