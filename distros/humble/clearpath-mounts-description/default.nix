
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-clearpath-mounts-description";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_mounts_description/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "3dd3df249a6a0ec0013c6f8e68584b19525999ba096d359a250e7c79ffcb9881";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath mounts URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
