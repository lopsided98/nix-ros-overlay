
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nodelet, novatel-oem7-msgs, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-novatel-oem7-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/noetic/novatel_oem7_driver/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "31177a28c690bbe9df9b89d554af623b43cbcd195a290336083e307396754378";
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
