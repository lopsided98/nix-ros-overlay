
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, navigation2, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-navigation2";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_navigation2/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "8ed49c904ae52214afd7206f568be588251c57da9648f89559be15d624f0ba18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ navigation2 rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for navigation2";
    license = with lib.licenses; [ asl20 ];
  };
}
