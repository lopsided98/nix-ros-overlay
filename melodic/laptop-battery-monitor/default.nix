
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, diagnostic-msgs, rospy, catkin }:
buildRosPackage {
  pname = "ros-melodic-laptop-battery-monitor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/linux_peripheral_interfaces-release/archive/release/melodic/laptop_battery_monitor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "d486cc68028e01679ecbc328c3164ad952e32cd81b49f8224a155f67390d7442";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs ];
  propagatedBuildInputs = [ sensor-msgs rospy diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple script to check battery status'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
