
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-iron-realsense2-description";
  version = "4.54.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/iron/realsense2_description/4.54.1-2.tar.gz";
    name = "4.54.1-2.tar.gz";
    sha256 = "6343f6a383b254810fcb5e1c1cbca836e385c002f93981ef983eda2c22ac443c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense description package for Intel 3D D400 cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
