
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-manipulators-description, clearpath-mounts-description, clearpath-platform-description, clearpath-sensors-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-description";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_description/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "ced4ae42f55e5c219a23533240029435a3c4773f6a68a17e6820ce3ce2358630";
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
