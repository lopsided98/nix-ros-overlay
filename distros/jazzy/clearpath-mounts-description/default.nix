
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-mounts-description";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_mounts_description/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "782b41262eec6d0174a0a5b255e21a06c1c2ba3b7c575c6bf0d3578f2c859a53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
