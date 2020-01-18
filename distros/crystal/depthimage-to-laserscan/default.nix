
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, image-geometry, opencv3, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-crystal-depthimage-to-laserscan";
  version = "2.2.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depthimage_to_laserscan-release/archive/release/crystal/depthimage_to_laserscan/2.2.1-0.tar.gz";
    name = "2.2.1-0.tar.gz";
    sha256 = "582d63c338ab61eaa11d0299ba51a6da91979a75877b6c72208f71891e6b13a1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ image-geometry opencv3 rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
