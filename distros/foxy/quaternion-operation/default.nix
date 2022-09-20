
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, eigen, geometry-msgs, ouxt-lint-common, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-quaternion-operation";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/foxy/quaternion_operation/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "8ce497e6156de01072993ba627ce8916bec87bd00b1d9b181dee6ef7c3091699";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
