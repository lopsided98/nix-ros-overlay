
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-realsense2-description";
  version = "4.55.1-r3";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/jazzy/realsense2_description/4.55.1-3.tar.gz";
    name = "4.55.1-3.tar.gz";
    sha256 = "3fdbd9ef2b162e5ab48fd528a179e9487b2045b2db3d216beeafe5228840c7e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense description package for Intel 3D D400 cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
