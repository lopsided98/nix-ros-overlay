
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-ros";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/eloquent/ament_cmake_ros/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "50fea4622487565b18a40ba02cb8e35cb7e0b2cc0a7c13b8c4bc875a2e6688ac";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The ROS specific CMake bits in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
