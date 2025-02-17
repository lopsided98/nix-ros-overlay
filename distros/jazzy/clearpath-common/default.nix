
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-common";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_common/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "ac6e2b2e0541cb2a16ff649acc81530f8a0cda664b9ef40838e831580e882013";
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
