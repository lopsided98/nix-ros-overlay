
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, create-bringup, create-description, create-driver, create-msgs }:
buildRosPackage {
  pname = "ros-humble-create-robot";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/humble/create_robot/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "baa7ecf929d71fec750bb5e0f6d3860f5c4808337be0175ed066746614827e92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ create-bringup create-description create-driver create-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS driver for iRobot's Create 1 and 2, based on the libcreate C++ library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
