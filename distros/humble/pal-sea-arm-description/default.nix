
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-pro-gripper-description, pal-sea-arm-controller-configuration, pal-urdf-utils, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-description";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm-release/archive/release/humble/pal_sea_arm_description/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "313a2317d77ae83c82d6b4a019c1ffa0dd3c3fbe6620c15718402937329acdca";
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
