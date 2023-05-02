
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-params";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_params/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "96c1faaf0132b8ae499adcbeb00fc2a4a4e0e7459b395f09a9d3f2bf1f76cc68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Central storage of navigation configuration parameters'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
