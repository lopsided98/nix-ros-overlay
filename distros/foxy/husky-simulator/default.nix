
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-gazebo }:
buildRosPackage {
  pname = "ros-foxy-husky-simulator";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_simulator/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "72c78817ea2df607e2f22da6b35cca5f6a91c8b760ba0e9160f48427acd2c29a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
