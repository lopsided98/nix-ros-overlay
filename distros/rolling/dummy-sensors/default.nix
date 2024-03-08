
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dummy-sensors";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_sensors/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "c4bba7c1a495371a2df46aebe45687c43f5f4ab7543b7d62a4dd93b8e79861c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy sensor nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
