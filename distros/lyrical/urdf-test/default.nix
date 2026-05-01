
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, rclpy, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-lyrical-urdf-test";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_test-release/archive/release/lyrical/urdf_test/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "b823de1f98bcc7e67539fb106aa35c36a310bb295dbc8186d9d9514f9c2d1c90";
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
