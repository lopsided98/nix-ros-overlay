
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robotis-device";
  version = "0.2.9";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/robotis_device/0.2.9-0.tar.gz";
    name = "0.2.9-0.tar.gz";
    sha256 = "aa72b1f902c9045bfd34d8baf9ff416f8ffe4af276f82294532523b933739780";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-sdk roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package that manages device information of ROBOTIS robots.
    This package is used when reading device information with the robot information file
    from the robotis_controller package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
