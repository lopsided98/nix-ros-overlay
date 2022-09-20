
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-cartographer";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_cartographer/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "3d8801ab3e3732e8c7a54188f880d7b63bb2d2d4483bfe0a2d826bcc410a4ec1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
