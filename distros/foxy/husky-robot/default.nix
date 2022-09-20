
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-foxy-husky-robot";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_robot/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "a6826b911a5a541bc8338d44e701e82e752346112bae45e66bb1578f548b7180";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
