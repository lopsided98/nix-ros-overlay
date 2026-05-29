
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-description";
  version = "2.9.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_description/2.9.8-1.tar.gz";
    name = "2.9.8-1.tar.gz";
    sha256 = "b86e40e38cab3a7f486d457d9a8d167953a1f4c5f1130f46a4e866cd642609f6";
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
