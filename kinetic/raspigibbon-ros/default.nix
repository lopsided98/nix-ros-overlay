
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, raspigibbon-bringup, catkin, futaba-serial-servo, raspigibbon-description, raspigibbon-msgs }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-ros";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/raspberrypigibbon/raspigibbon_ros-release/archive/release/kinetic/raspigibbon_ros/0.2.1-0.tar.gz;
    sha256 = "554b035a8dd0ba506398fcd2a60f60c5e285ab26004b42aa4c8b49201cfa3a87";
  };

  propagatedBuildInputs = [ raspigibbon-msgs raspigibbon-description futaba-serial-servo raspigibbon-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
