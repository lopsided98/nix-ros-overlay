
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-common";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_common/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "993deb10e583701a5265b258fb0cb5748e273ee5f916ea45e5551158b14eb7da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-description clearpath-generator-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
