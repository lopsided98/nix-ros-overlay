
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-lint-auto, ament-lint-common, kangaroo-controller-configuration, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-sea-arm-description, pal-urdf-utils, rcl-interfaces, rclcpp, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-kangaroo-description";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_description/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "d9eb628516a06c87e0803ba33937bdf065ed68712e89febc5051d525847e9815";
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
