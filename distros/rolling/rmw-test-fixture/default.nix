
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-rolling-rmw-test-fixture";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/rolling/rmw_test_fixture/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "31164ae1a337c8d97761109b398b592241bc31cc5936b498640d11cc72824a79";
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
