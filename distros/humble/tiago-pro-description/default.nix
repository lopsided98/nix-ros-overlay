
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, omni-base-description, pal-sea-arm-description, pal-urdf-utils, robot-state-publisher, tiago-pro-head-description, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-description";
  version = "1.35.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_description/1.35.4-1.tar.gz";
    name = "1.35.4-1.tar.gz";
    sha256 = "7b1e4c0b1b126a9238236a0d4c632f4319895aa11651dfce3d91d393f960ff4f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ omni-base-description pal-sea-arm-description pal-urdf-utils robot-state-publisher tiago-pro-head-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "The tiago_pro_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
