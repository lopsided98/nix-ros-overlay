
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-flir-ptu-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/jazzy/flir_ptu_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "4840c0627b562e261beb346d4bc983d9183f9a95b2ba5387ede27164b816e9fd";
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
