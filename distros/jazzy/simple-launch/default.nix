
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-simple-launch";
  version = "1.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/jazzy/simple_launch/1.9.1-3.tar.gz";
    name = "1.9.1-3.tar.gz";
    sha256 = "42f9439983a86b4ee445a22f77af199a50c13dc90a6839e6788aa7186d822f7d";
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
