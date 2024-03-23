
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, robot-state-publisher, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-human-description";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/human_description-release/archive/release/humble/human_description/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "537aabd95297bcbe4079dc98e1ce18bf728ee2b7467398298ee4ea2559f19ac6";
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
