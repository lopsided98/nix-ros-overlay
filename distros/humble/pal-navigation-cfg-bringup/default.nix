
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-bringup";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_bringup/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "d012bc1ee0f49c696d0f78efee481a3dabbc49af6fddf2eb7a7ca7fbbfe4f4e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Central storage of PAL Navigation launch files'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
