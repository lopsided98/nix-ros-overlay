
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "fcd59cbb3c58ea337123bcf32c029179f05d16ce44e9c598bec3cc31f54582d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TIAGo navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
