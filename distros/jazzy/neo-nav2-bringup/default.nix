
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-neo-nav2-bringup";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_nav2_bringup-release/archive/release/jazzy/neo_nav2_bringup/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "6a604b2e17c87bcdc076c9a34917ce85b9457b6099c71fe7035115893946f51d";
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
