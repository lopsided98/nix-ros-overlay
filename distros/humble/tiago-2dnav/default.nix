
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, pal-navigation-cfg-bringup, pmb2-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-2dnav";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_2dnav/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "4bdbcd49718605f3d0e2ea22a75c180e6f175d33a3867d797cbd2c65d176db2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal pal-navigation-cfg-bringup pmb2-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TIAGo-specific launch files needed to run navigation on a TIAGo robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
