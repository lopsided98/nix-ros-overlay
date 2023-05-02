
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-dummy-sensors";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/dummy_sensors/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "96f682d00e812abab81c7e8a25901dbf2792086bbe8368b8ad7a371b249d4b5c";
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
