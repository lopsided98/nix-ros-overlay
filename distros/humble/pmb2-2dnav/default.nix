
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-navigation-cfg-bringup, pmb2-laser-sensors, pmb2-maps, rviz2 }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "77f0dc20d31c291d8b36927d07bd5c01317e02deaeb04c75cdac0344f52c4085";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-navigation-cfg-bringup pmb2-laser-sensors pmb2-maps rviz2 ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
