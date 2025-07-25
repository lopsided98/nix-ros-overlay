
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.18.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.18.0-1.tar.gz";
    name = "2.18.0-1.tar.gz";
    sha256 = "90a087b7616cbcd09e606f14fcfd51bc9dcff74232bd6a0fc66a7e05640cee24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-2dnav omni-base-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base Navigatgion metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
