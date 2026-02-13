
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-bringup, tiago-pro-controller-configuration, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-robot";
  version = "1.35.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_robot/1.35.4-1.tar.gz";
    name = "1.35.4-1.tar.gz";
    sha256 = "1964d0a4ec103713a490dc26f9edcce9fdc4c8e46a8b2c8a3f688950d1e5c526";
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
