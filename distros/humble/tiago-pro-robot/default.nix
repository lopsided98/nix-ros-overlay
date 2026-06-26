
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-bringup, tiago-pro-controller-configuration, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-robot";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_robot/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "bb2a92e4879ee2b3ec9ec00fade5081b6e1ec4f3a3ba3264c9cece4e68095111";
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
