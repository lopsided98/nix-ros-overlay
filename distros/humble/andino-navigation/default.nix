
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, andino-gz-classic, launch-ros, nav2-bringup, navigation2, rviz2, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-humble-andino-navigation";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_navigation/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6565c39e18655689f5e1f14a0c5b5a6cf20163c3c9dab467440e9ec601119879";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ andino-gz-classic launch-ros nav2-bringup navigation2 rviz2 turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bring up nav2 package with Andino.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
