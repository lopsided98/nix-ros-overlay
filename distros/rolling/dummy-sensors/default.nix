
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dummy-sensors";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_sensors/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "3df797374cedeaf17e4ff5eeb70c6f85ddb8156d746754d54b9681f5bd6d67d8";
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
