
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-pal, launch-ros, launch-testing-ament-cmake, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-foxy-pmb2-description";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/pmb2_description/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "dc7291c700d7a875e96fbeefa45fd6d8450f3412bf104321a9c7fc8a6da9ac02";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ joint-state-publisher-gui launch launch-pal launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = ''Mechanical, kinematic, visual, etc. description of the PMB2 robot.
      The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
