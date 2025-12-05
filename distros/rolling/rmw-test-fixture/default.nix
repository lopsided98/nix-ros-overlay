
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-rolling-rmw-test-fixture";
  version = "0.15.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/rmw_test_fixture/0.15.5-1.tar.gz";
    name = "0.15.5-1.tar.gz";
    sha256 = "04b53cc6f30ef4000395f07e66fd9c36bcef52b9d364efa8481f5400dde03061";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Plugin interface for tools for isolating ROS communication at the RMW layer";
    license = with lib.licenses; [ asl20 ];
  };
}
