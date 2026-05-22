
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-description";
  version = "2.9.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_description/2.9.7-1.tar.gz";
    name = "2.9.7-1.tar.gz";
    sha256 = "b00e8360623583debc9c1d361ee425176bc10c0f474a2991748165da69fa465c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-manipulators-description clearpath-mounts-description clearpath-platform-description clearpath-sensors-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath URDF descriptions metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
