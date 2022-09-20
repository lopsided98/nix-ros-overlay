
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-ros";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/foxy/ament_cmake_ros/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "c3799ed35c6541e8f0143c483206c770b037fd4c30fe9e46f10c6179ee8a164d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ];

  meta = {
    description = ''The ROS specific CMake bits in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
