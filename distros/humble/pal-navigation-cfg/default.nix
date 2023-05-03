
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-navigation-cfg-bringup, pal-navigation-cfg-params }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "f4d59355f3792a1cfdf11429906745cce258e18f6f194f301df901ca9b3724fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-navigation-cfg-bringup pal-navigation-cfg-params ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PAL Navigation Configuration metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
