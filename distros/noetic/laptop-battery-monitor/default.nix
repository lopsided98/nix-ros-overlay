
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laptop-battery-monitor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/noetic/laptop_battery_monitor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "99f83a99cde03b74c19fc0ca4b6deb962001b6f2b2be34fb1e2ffbf6d4a905c3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple script to check battery status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
