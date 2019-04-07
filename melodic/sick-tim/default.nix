
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, libusb1, diagnostic-updater, robot-state-publisher, dynamic-reconfigure, roslaunch, roscpp, libusb, xacro }:
buildRosPackage {
  pname = "ros-melodic-sick-tim";
  version = "0.0.15";

  src = fetchurl {
    url = https://github.com/uos-gbp/sick_tim-release/archive/release/melodic/sick_tim/0.0.15-0.tar.gz;
    sha256 = "7e331af0eea21b51239fc2ed9b451fe43529d24569f208a3e71591e2f334c3e1";
  };

  buildInputs = [ libusb1 diagnostic-updater roslaunch dynamic-reconfigure sensor-msgs roscpp ];
  propagatedBuildInputs = [ libusb1 diagnostic-updater robot-state-publisher dynamic-reconfigure sensor-msgs roscpp libusb xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    #license = lib.licenses.BSD;
  };
}
