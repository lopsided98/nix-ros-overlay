
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-kilted-turtlebot3-cartographer";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/kilted/turtlebot3_cartographer/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "d67a58ab1f65065292c14523cc9883ddf57c6c627625e61f3743693ad1cfbeed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for cartographer";
    license = with lib.licenses; [ asl20 ];
  };
}
