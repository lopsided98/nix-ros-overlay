
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, omni-base-description, pal-gripper-description, pal-hey5-description, pal-robotiq-description, pal-urdf-utils, pmb2-description, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-description";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_robot-release/archive/release/humble/tiago_description/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "58b78012dded0fb2684421ee4d50bc2858246e86801339cc27b2cd6d16594611";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros omni-base-description pal-gripper-description pal-hey5-description pal-robotiq-description pal-urdf-utils pmb2-description robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
      etc.) of the TIAGO robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
