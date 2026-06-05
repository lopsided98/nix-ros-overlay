
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, franka-description, kortex-description, robot-state-publisher, robotiq-description, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators-description";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators_description/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "af78aad96a7e03142aa31615c606869d79a1fb36d22e9921a1445abd47b793b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ewellix-description franka-description kortex-description robot-state-publisher robotiq-description ur-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath manipulator URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
