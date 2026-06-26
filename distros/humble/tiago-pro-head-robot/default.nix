
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-head-bringup, tiago-pro-head-controller-configuration, tiago-pro-head-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-robot";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_robot/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "9d8427b66c5948914411311cf79adb1acd75a65a178e72f20a6445d9d85fe5a2";
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
