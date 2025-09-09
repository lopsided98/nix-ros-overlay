
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, gtest-vendor, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-geometry";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_geometry-release/archive/release/rolling/tuw_geometry/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "9b4523f9660341ae695e01023a7bbe4592818f9b6e03fb726111af46e5599d73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-ros gtest-vendor opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tuw_geometry package";
    license = with lib.licenses; [ bsd3 ];
  };
}
