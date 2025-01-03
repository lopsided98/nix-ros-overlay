
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ess-imu-driver2";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ess_imu_driver2-release/archive/release/jazzy/ess_imu_driver2/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "416fc0f09a435130c0edd9f1a42939f50559774a8e545595739205fb759af384";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 package for Epson IMU using C++ wrapper around Linux C driver";
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}
