
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-navigation-cfg-bringup, pal-navigation-cfg-params }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "d3085c7d874d2c2bbecc4891a8b00b39311ffb9f8e7dd056f115c8a805ace7b3";
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
