
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "8462fe96b7e573d26a56b3897b27b2b1008ae145214b80211df363661dd8375c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath mounts URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
