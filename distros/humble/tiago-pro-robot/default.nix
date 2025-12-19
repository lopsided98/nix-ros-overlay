
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-bringup, tiago-pro-controller-configuration, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-robot";
  version = "1.32.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_robot/1.32.1-1.tar.gz";
    name = "1.32.1-1.tar.gz";
    sha256 = "2d1b0d262c202c138f5de53c6d27dc5915d594927b9e0f500282845fe621a3e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-bringup tiago-pro-controller-configuration tiago-pro-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
