
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-depthimage-to-laserscan";
  version = "2.5.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/lyrical/depthimage_to_laserscan/2.5.1-4.tar.gz";
    name = "2.5.1-4.tar.gz";
    sha256 = "d3e57ce758dc40abfae28d98b3048a607e35b228a0b3d912dddde5b684c189de";
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
