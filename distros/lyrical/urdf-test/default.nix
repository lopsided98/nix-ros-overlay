
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, rclpy, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-lyrical-urdf-test";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_test-release/archive/release/lyrical/urdf_test/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "4f8ac2c56ccefed71d45e5240948e7fd609981c8324e9ce6042032a4a591cbb4";
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
