
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, hey5-description, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-gripper-description, pmb2-description, tiago-controller-configuration, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-description";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_description/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "cdd35c9282d4369542974118c79b015c2f1b98e23bf28d610616d2eea4d8d719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ hey5-description launch launch-pal launch-param-builder launch-ros pal-gripper-description pmb2-description tiago-controller-configuration xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
      etc.) of the TIAGO robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
