
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, rclpy, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-kilted-urdf-test";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_test-release/archive/release/kilted/urdf_test/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "b0941ba91978d7a9968e626c74f8b3f97aee64765ae6befbbc130a93cac31089";
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
