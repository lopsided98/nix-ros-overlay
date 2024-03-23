
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.0.12-1.tar.gz";
    name = "4.0.12-1.tar.gz";
    sha256 = "7c452c51f06e5f8da6dc65b379cfd4ab3d6a25ad7e856e0ca2bb07c215ca1b7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors pmb2-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2 navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
