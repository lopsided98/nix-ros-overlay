
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, domain-coordinator }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-ros";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/jazzy/ament_cmake_ros/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "e864e3f2045c851d8704e6caf624f482a921a5ef83ed094ab037d6e0b52d5141";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ];

  meta = {
    description = "The ROS specific CMake bits in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
