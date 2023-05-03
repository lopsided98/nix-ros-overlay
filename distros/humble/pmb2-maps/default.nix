
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pmb2-maps";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_maps/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "06c72511123f0b348eee99939f7fe8f7c7aaa963fb0bf2f949e73487ef73f784";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific maps and launch files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
