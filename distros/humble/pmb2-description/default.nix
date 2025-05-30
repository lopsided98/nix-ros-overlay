
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, rviz2, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pmb2-description";
  version = "5.8.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_description/5.8.2-1.tar.gz";
    name = "5.8.2-1.tar.gz";
    sha256 = "dcc4929932a4799e1f606908c4e98d478c7e2b880053e3a762ff9137c980ef24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
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
