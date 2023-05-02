
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-navigation-cfg-bringup, pal-navigation-cfg-params }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "343b327b1d8e5afa46c205ebd7e271ba054eedef9e3dcffddc4e89a04d9d082f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-navigation-cfg-bringup pal-navigation-cfg-params ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PAL Navigation Configuration metapackage'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
