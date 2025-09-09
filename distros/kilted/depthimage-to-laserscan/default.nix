
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-depthimage-to-laserscan";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/kilted/depthimage_to_laserscan/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "0e23dddf63d9a4e57810fec9dbf39f01dfdc934d3aa43b31f69967c874e8fad5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ image-geometry opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "depthimage_to_laserscan";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
