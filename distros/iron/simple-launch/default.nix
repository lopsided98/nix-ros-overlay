
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-iron-simple-launch";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/iron/simple_launch/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "d614e6f671bb2d71eab3236fb47d77a775e8d18886fe321740e0829ee143b54c";
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
