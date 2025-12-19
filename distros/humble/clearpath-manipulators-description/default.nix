
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ewellix-description, franka-description, kortex-description, robot-state-publisher, robotiq-description, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators-description";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators_description/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "13e4753d402b602bd7694f0ba5705fc6750c4d51bac76330d3c8201f6fa5d006";
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
