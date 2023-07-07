
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "0fa5dd5b0111f852661e4e888bceeaacf0803e14e1beb645ec78dfd6aea3dbc4";
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
