
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-humble-urdf-test";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/urdf_test-ros2-gbp/archive/release/humble/urdf_test/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "234602cd9e1a3ef1f8507b91b34470edf646883c6fba2e8de4153231d1c41933";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The urdf_test package";
    license = with lib.licenses; [ asl20 ];
  };
}
