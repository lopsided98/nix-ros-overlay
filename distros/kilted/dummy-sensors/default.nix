
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-dummy-sensors";
  version = "0.36.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/dummy_sensors/0.36.4-1.tar.gz";
    name = "0.36.4-1.tar.gz";
    sha256 = "023ed5eba08e533b5c0c4c3dd2c6023de8d09b6e97451657466597da236318c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "dummy sensor nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
