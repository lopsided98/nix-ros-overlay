
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-pro-gripper-description, pal-sea-arm-controller-configuration, pal-urdf-utils, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-description";
  version = "1.21.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_description/1.21.0-1.tar.gz";
    name = "1.21.0-1.tar.gz";
    sha256 = "93ae07b1c583e54fa008d30d1f6ea961ff32288bb20a68dd9447da695a073e4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-pal launch-param-builder launch-ros pal-pro-gripper-description pal-sea-arm-controller-configuration pal-urdf-utils robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "The pal_sea_arm_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
