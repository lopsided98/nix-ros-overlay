
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-dual-bringup, tiago-dual-controller-configuration, tiago-dual-description }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-robot";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_robot-release/archive/release/humble/tiago_dual_robot/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "7332106645dde474f07e33db4b4258e4ea4c04631d13a49c030acf15d38d41d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-dual-bringup tiago-dual-controller-configuration tiago-dual-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Description and controller configuration of TIAGo";
    license = with lib.licenses; [ asl20 ];
  };
}
