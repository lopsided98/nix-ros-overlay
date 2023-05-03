
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, nav2-bringup }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-bringup";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_bringup/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "24876b3b7d095a63de4ce244b77981623c7bba3441713572f7091b89fc2e12eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Central storage of PAL Navigation launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
