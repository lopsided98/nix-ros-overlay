
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nav-msgs, nmea-msgs, nodelet, novatel-oem7-msgs, rosbag, roscpp, rostest, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-novatel-oem7-driver";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/noetic/novatel_oem7_driver/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "35d850869c4e4f84280d16fc9af9e511ba718123a194b1372ae09f25e3c83a97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ boost gps-common nav-msgs nmea-msgs nodelet novatel-oem7-msgs roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NovAtel Oem7 ROS Driver'';
    license = with lib.licenses; [ mit ];
  };
}
