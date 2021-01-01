
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rcutils }:
buildRosPackage {
  pname = "ros-dashing-hardware-interface";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/hardware_interface/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6b6e74c8154f066becb6d60a99cc20aaafeec8d20e111a485a2e27c01ac49930";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 ros_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
