
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common, clearpath-platform }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "f15c855cbbd494261ddda4f47f42d8f2da8bcd493ad9e150241986dcb93c7d2a";
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
