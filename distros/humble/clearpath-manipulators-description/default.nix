
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, franka-description, kortex-description, robot-state-publisher, robotiq-description, ur-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-manipulators-description";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_manipulators_description/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "0f1fe4a5199a993d7ddd4cf65f2aa0c382ec0ea9bfc9a3af9e4d4fa1b3c2cf03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ franka-description kortex-description robot-state-publisher robotiq-description ur-description urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath manipulator URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
