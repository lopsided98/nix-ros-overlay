
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c1c59e6e8f61adbcba90514ba75a3353c9d6ae957cf2e0b5c5662eb0d0fb6ce2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath mounts URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
