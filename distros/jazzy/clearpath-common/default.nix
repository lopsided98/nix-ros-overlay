
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-common";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_common/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "fcdade2cd2c7ae2bd587f0608585855f47ba682269517974bbc9fa63a108d663";
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
