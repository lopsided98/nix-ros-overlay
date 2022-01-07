
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, eigen, geometry-msgs, ouxt-lint-common, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-quaternion-operation";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/galactic/quaternion_operation/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "0e5d07e17d6eb8299210be25f68fcb5f96b0bcd7edee11536918bd37b5b7d543";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ouxt-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
