
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, nodelet, novatel-oem7-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-novatel-oem7-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kinetic/novatel_oem7_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5e54dcef4b884a9da5a813b8b9e4249e5b51a711da4f86d7e108264a5ad31560";
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
