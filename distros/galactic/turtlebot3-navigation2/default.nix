
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-navigation2";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_navigation2/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "7db70abb6c3c439138c650627c90f6745ccbdb372875942f1ce131a28b5ae020";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
