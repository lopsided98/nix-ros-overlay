
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, kangaroo-controller-configuration, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-sea-arm-description, pal-urdf-utils, rcl-interfaces, rclcpp, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-kangaroo-description";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_description/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "f15087a6476408cd5e4b815e428dffef844a95ba21b0f6ea989f334750867ff9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rcl-interfaces rclcpp ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ kangaroo-controller-configuration launch launch-pal launch-param-builder launch-ros pal-sea-arm-description pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The kangaroo_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
