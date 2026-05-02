
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-rolling-human-description";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/human_description-release/archive/release/rolling/human_description/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "a2f59e74c79b47e5b6eb747a2c33f46a350499f45b877fe0e222aee833a20270";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake robot-state-publisher urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "This package contains a parametric kinematic description of humans. 
        The files in this package are parsed and used by a variety of other 
        components, notably in the context of human-robot interaction.
        Most users will not interact directly with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
