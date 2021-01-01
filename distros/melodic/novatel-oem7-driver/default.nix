
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nav-msgs, nmea-msgs, nodelet, novatel-oem7-msgs, rosbag, roscpp, rostest, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-novatel-oem7-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/melodic/novatel_oem7_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "cd25a9f02763a4a8868cfcb1a8fed502e161be184fa9b8b038128e82596a7f16";
  };

  buildType = "catkin";
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ boost gps-common nav-msgs nmea-msgs nodelet novatel-oem7-msgs roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NovAtel Oem7 ROS Driver'';
    license = with lib.licenses; [ mit ];
  };
}
