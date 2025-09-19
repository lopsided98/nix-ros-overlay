
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-kilted-neo-nav2-bringup";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_nav2_bringup-release/archive/release/kilted/neo_nav2_bringup/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "3491e090478da02b5ea6a1c461999570bba1268c60f740d1330ccb4c545fab4a";
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
