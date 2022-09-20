
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-foxy-pmb2-maps";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/foxy/pmb2_maps/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "ab3f6a6caacdb46babc92db0d073b4e7055474b1c9830f341cc013ec678a304a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific maps and launch files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
