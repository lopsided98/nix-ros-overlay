
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-navigation-cfg-bringup, pal-navigation-cfg-params }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg";
  version = "3.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg/3.0.6-1.tar.gz";
    name = "3.0.6-1.tar.gz";
    sha256 = "7d647883ca25b21a9b14fb1bfc2cdd19bc04764a11a9201f1ce9cdb8058be7c0";
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
