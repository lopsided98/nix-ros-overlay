
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, robot-state-publisher, robotiq-description, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-manipulators-description";
  version = "2.9.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_manipulators_description/2.9.8-1.tar.gz";
    name = "2.9.8-1.tar.gz";
    sha256 = "da15125b9a6fed30797b70a745d0caf506ddb5dbeaa8c76bd3d8472c999c18b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-description robot-state-publisher robotiq-description ur-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath manipulator URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
