
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, robotiq-description, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-manipulators-description";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_manipulators_description/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "5334d69dccb692311200d894bfcedf9f91a8b05c5b969e63480dfc2edd3bcb74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher robotiq-description ur-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath manipulator URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
