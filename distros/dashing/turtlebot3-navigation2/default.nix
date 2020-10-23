
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-navigation2";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_navigation2/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d2b558a16cf425cb41461ee85418bb7700c6133d1a333b53da49d94504c33149";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
