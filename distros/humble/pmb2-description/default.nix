
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pmb2-controller-configuration, rviz2, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pmb2-description";
  version = "5.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/humble/pmb2_description/5.0.7-1.tar.gz";
    name = "5.0.7-1.tar.gz";
    sha256 = "f0a5595d70ae51aef53c4c9f50a0259d4b80171041f3d6f5fd16ef1301e2d98c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-pal launch-param-builder launch-ros pmb2-controller-configuration rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = ''Mechanical, kinematic, visual, etc. description of the PMB2 robot.
      The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
