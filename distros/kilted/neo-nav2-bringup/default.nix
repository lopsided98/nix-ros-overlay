
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-kilted-neo-nav2-bringup";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/neo_nav2_bringup-release/archive/release/kilted/neo_nav2_bringup/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "9b1e14549fe9184cb646361b4dde57532f04565982995e455e3f7d9974f55722";
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
