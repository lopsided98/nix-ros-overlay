
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, rclpy, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-humble-urdf-test";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/urdf_test-ros2-gbp/archive/release/humble/urdf_test/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "61f45e622928b64868a5c385767c2b6b91e6f15ce133c49e921ef4c998672d8a";
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
