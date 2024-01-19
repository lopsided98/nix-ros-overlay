
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-cartographer";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_cartographer/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "10cf903430579676235a45ca57aaad8ac3918bd484143753cc5d28c47cd6f98b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
