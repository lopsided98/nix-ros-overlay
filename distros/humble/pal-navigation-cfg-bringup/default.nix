
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, pal-navigation-cfg-params, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-bringup";
  version = "3.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_bringup/3.0.6-1.tar.gz";
    name = "3.0.6-1.tar.gz";
    sha256 = "73e72a705143ed51a8b26724e8f7f6174373cdcf52226d012b469b97d128737c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal nav2-bringup pal-navigation-cfg-params ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Central storage of PAL Navigation launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
