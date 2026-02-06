
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-simple-launch";
  version = "1.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/rolling/simple_launch/1.11.2-1.tar.gz";
    name = "1.11.2-1.tar.gz";
    sha256 = "b858f2270976064133a6aba287417aac16bc7c29219a1df6dbf0ac3b78e3a52b";
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
