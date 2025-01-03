
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-geometry";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_geometry-release/archive/release/rolling/tuw_geometry/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "17f29ba20af57d662bf578d7d6fcb6b34d1b00635fe6229c573a1128afa06148";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tuw_geometry package";
    license = with lib.licenses; [ bsd3 ];
  };
}
