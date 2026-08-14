
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-bringup, tiago-pro-controller-configuration, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-robot";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_robot/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "f8029005700840b91317053a02910aa793e687a144cda89e20438dd9b529e44c";
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
