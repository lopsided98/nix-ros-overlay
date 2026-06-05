
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-description, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-common";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_common/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "d7e7723b920b10448f921e592db088dd1a7961405bf45d142b3c8734b1fea2ec";
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
