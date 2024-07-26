
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "27813f5ffb18556f0f373dd0b3b9bea1f50bf6daae5bb4a0676d81b81c9fd962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-description clearpath-generator-common clearpath-platform ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
