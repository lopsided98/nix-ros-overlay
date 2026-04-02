
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-rolling-human-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/human_description-release/archive/release/rolling/human_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "470e42cb92ebe96abc77ad2c7b3ab922575fe24865c994b905d8a4136054dd2b";
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
