
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, rclpy, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-test";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_test-release/archive/release/rolling/urdf_test/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "b94a00ad88453042e5c94bf2b5840383454c5e7783f8b458fcde5eea5c661a73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch xacro ];
  propagatedBuildInputs = [ rclpy urdfdom ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The urdf_test package";
    license = with lib.licenses; [ asl20 ];
  };
}
