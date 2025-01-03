
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tuw-geometry";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_geometry-release/archive/release/jazzy/tuw_geometry/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9bd8ba68a1d9de660851c2d9348a61a611e52e2f3c7b80ae985b0fd59fc8632c";
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
