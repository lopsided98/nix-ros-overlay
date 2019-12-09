
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-lint-common, ament-cmake, ament-lint-auto, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-dummy-sensors";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/dummy_sensors/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "1d1cc2a2ffc41d5208e7c73543af2636e0490ea9ec6aaf264d3cbf54b8a44fac";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy sensor nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
