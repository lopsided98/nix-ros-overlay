
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-mounts-description";
  version = "2.6.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_mounts_description/2.6.4-1.tar.gz";
    name = "2.6.4-1.tar.gz";
    sha256 = "3102a5364775c9c4f5103fe657a4ecad1e0a05cf04b4e9db96fea69e3cd693d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath mounts URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
