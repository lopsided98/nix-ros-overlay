
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pmb2-maps";
  version = "4.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_maps/4.0.12-1.tar.gz";
    name = "4.0.12-1.tar.gz";
    sha256 = "1dd35ef1ec4e2057b8f54e2e08477885e2470b9e065e9ef1f76c059d6db96ebc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific maps and launch files.";
    license = with lib.licenses; [ asl20 ];
  };
}
