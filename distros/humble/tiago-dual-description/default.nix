
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, pal-gripper-description, pal-hey5-description, pal-robotiq-description, pmb2-description, robot-state-publisher, tiago-description, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-description";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_robot-release/archive/release/humble/tiago_dual_description/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "f2dd8a989c64e94a507e25bd2ca31c654d2c73ff0a958b5e6cf5f493ade1de8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ pal-gripper-description pal-hey5-description pal-robotiq-description pmb2-description robot-state-publisher tiago-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
      etc.) of the TIAGO robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
