
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, rviz2, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pmb2-description";
  version = "5.1.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_description/5.1.2-1.tar.gz";
    name = "5.1.2-1.tar.gz";
    sha256 = "5cc4358552c2d612a95ea8fadfd376ea1d1533bd065790d89404f9ff2f2c2577";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-pal launch-param-builder launch-ros pal-urdf-utils rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "Mechanical, kinematic, visual, etc. description of the PMB2 robot.
      The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
