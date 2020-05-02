
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, nodelet, novatel-oem7-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-novatel-oem7-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/melodic/novatel_oem7_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "914ada691690a247290b82c32d26d86fb323d75a50d93f5558559e6c4170187d";
  };

  buildType = "catkin";
  buildInputs = [ gps-common tf ];
  propagatedBuildInputs = [ nodelet novatel-oem7-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NovAtel Oem7 ROS Driver'';
    license = with lib.licenses; [ mit ];
  };
}
