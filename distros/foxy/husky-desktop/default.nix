
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-foxy-husky-desktop";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_desktop/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "21560266da1399025db0d84dc90a708c4208dddf47d5d01419759e82fae8b5c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
