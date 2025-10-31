
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, omni-base-description, pal-sea-arm-description, pal-urdf-utils, robot-state-publisher, tiago-pro-head-description, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-description";
  version = "1.32.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_description/1.32.0-1.tar.gz";
    name = "1.32.0-1.tar.gz";
    sha256 = "1ad4aa144ec8dd6772c323bb594b969abe7e9bcdeffde8fb700dff1a6a06e3ab";
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
