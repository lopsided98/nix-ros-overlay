
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.0.9-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.0.9-1.tar.gz";
    name = "4.0.9-1.tar.gz";
    sha256 = "9fbd56a31fe39736a0374d17dfc55e170453c9c5460fea371a80d4e9cc753692";
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
