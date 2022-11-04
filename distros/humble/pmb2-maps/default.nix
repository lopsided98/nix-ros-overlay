
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pmb2-maps";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_maps/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "8ed9b8bf2ee08c78c83f067e3f54b5ba6dab499384bea0899228be863b0b720a";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific maps and launch files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
