
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "b5cb43316449c356d278e7a936af460e261d2e52e2923b04f1d4979c14ce950a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors pmb2-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2 navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
