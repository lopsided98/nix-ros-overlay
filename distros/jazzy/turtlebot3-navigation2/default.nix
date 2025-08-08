
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-navigation2";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_navigation2/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "869f2fd8a246ed73ac6536f4b9550448e0fefd72ddc868e71d07820357b75577";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for navigation2";
    license = with lib.licenses; [ asl20 ];
  };
}
