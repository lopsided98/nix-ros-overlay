
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nav-msgs, nmea-msgs, nodelet, novatel-oem7-msgs, rosbag, roscpp, rostest, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-novatel-oem7-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/melodic/novatel_oem7_driver/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "097c43dea253790d85de8f3abbbb1f580d0b055cc9aea3e044e043a47c92ad81";
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
