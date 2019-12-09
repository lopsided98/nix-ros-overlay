
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-lint-common, ament-cmake, ament-lint-auto, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-dummy-sensors";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/dummy_sensors/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "9ad027e3adbca974a195d5ef9140a6b3042333e39d017c0520590127884e494c";
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
