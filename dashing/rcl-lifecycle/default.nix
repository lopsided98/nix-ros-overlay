
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gtest, rmw-implementation, lifecycle-msgs, ament-cmake-ros, rcl, ament-lint-auto, rcutils, osrf-testing-tools-cpp, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rcl-lifecycle";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_lifecycle/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "9b2e893cb65dc1c0aacda85ae0d8317bdc644743805579c7ebcce6d64825f7d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw-implementation lifecycle-msgs rcl rcutils rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest osrf-testing-tools-cpp ament-lint-common ];
  propagatedBuildInputs = [ rmw-implementation lifecycle-msgs rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
