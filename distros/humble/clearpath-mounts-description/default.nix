
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "3abef606a913b4b9e78405469bf349e56eb62f6be0c527b4d3b4008c9c30df32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath mounts URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
