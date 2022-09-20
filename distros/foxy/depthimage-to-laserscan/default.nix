
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-depthimage-to-laserscan";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/foxy/depthimage_to_laserscan/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "6f9a4fac2cd4999f0317b6d4fdc57c9400ace3e7ad4ecf9ae6fc3e831b4306ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ image-geometry opencv rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
