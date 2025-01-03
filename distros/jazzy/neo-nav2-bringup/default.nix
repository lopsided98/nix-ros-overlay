
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-neo-nav2-bringup";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_nav2_bringup-release/archive/release/jazzy/neo_nav2_bringup/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "0f433488ba2dcd2d172340fd4a6397790bef907b9591e35ae8d2b25cbd1134d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-common navigation2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS-2 navigation bringup packages for neobotix robots";
    license = with lib.licenses; [ asl20 ];
  };
}
