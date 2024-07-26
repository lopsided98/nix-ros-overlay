
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-simple-launch";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/rolling/simple_launch/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "81c3be980f4744d43cf2c639b96c4f74a8f523804f70bb2f3039bd0463ad6cfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Python helper class for the ROS 2 launch system";
    license = with lib.licenses; [ mit ];
  };
}
