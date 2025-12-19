
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-manipulators, moveit-setup-srdf-plugins }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-common";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_generator_common/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "06758b37b2c9f7b246f011151d638edf9bb99d41edf9e986f21cd4200b12eb02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-control clearpath-description clearpath-manipulators moveit-setup-srdf-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
