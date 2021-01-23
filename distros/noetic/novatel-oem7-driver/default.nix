
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nodelet, novatel-oem7-msgs, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-novatel-oem7-driver";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/noetic/novatel_oem7_driver/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "cb784de96570e4b2d49fc2368dde939a7e1926461613a39190d60590c4552db3";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost gps-common nodelet novatel-oem7-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NovAtel Oem7 ROS Driver'';
    license = with lib.licenses; [ mit ];
  };
}
