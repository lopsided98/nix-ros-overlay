
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nodelet, novatel-oem7-msgs, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-novatel-oem7-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kinetic/novatel_oem7_driver/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8718d0171c074453ea3634c45181149d8c82cecc7765e2edbdd0d42ec860c2f0";
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
