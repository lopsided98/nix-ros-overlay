
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-description";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_description/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "db2b9e84b924165ad37cfd935a2dbd79523daee5e7d8a7ae913e77c35e6930a0";
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
