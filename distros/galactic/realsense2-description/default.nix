
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-galactic-realsense2-description";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/realsense2_description/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "9e88417662b028d54f04ec4c4a3366ed519ad2c96400c07a556833082048fa1e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense Camera description package for Intel 3D D400 cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
