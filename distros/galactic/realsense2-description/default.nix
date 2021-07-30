
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-galactic-realsense2-description";
  version = "3.2.2-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/realsense2_description/3.2.2-2.tar.gz";
    name = "3.2.2-2.tar.gz";
    sha256 = "394c8ad4e49ca3e8ca8fcc6fa50c64689ffcb2de83f1b3c0e0864799e2d2ee24";
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
