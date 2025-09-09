
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rclcpp, rmw, rmw-implementation-cmake, rosidl-default-generators, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cm-executors";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cm_executors-release/archive/release/jazzy/cm_executors/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "893cbc37bd20791e0d0de29de0e1683de56baa7e8151b41ea0650730f6c7c49c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators test-msgs ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Cellumation executor package .";
    license = with lib.licenses; [ asl20 ];
  };
}
