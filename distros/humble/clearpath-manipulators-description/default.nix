
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kortex-description, robot-state-publisher, robotiq-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators-description";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators_description/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "08714fd4b4d4f99e4b831bcc0fa8cca3bf9e66c85502089619f626eeeff80e6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kortex-description robot-state-publisher robotiq-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath manipulator URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
