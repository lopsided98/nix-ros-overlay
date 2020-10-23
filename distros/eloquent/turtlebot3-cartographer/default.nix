
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-eloquent-turtlebot3-cartographer";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/eloquent/turtlebot3_cartographer/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "1e1c9ef37bae4e76dd4fb79869eaddf8acbab3061a34cfbba3bc5aa017424e3e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
