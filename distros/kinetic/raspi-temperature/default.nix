
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-raspi-temperature";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/bberrevoets/raspi_temperature-release/archive/release/kinetic/raspi_temperature/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "e85194ba3cc5481c1b4e68627f7352898852cdc504b8b564cc256057f01d775d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Measures the core temp of a raspberry pi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
