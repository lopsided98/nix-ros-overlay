
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-head-bringup, tiago-pro-head-controller-configuration, tiago-pro-head-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-robot";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_robot/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "98ce4d0b136ff745b98f2e5508ac017b516956fc3ca29b4f6e7e62e5af45c08a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-head-bringup tiago-pro-head-controller-configuration tiago-pro-head-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_head_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
