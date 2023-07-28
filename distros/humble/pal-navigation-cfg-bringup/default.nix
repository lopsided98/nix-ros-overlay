
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, nav2-bringup, pal-navigation-cfg-params, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-bringup";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_bringup/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "5733a0ecf0ff6148e2dc1ffc8e81594947ebe02b755b144513f1e7be0a910bf2";
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
