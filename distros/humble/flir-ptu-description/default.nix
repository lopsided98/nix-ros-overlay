
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-flir-ptu-description";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/humble/flir_ptu_description/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "876763c3341514b84dcdb5bbe13def7384d86e658d3ea66eb2bd449b00da4e52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF description of the FLIR PTUs.";
    license = with lib.licenses; [ bsd3 ];
  };
}
