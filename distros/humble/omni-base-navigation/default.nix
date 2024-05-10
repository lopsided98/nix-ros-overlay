
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-2dnav, omni-base-laser-sensors, omni-base-maps }:
buildRosPackage {
  pname = "ros-humble-omni-base-navigation";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_navigation-release/archive/release/humble/omni_base_navigation/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "72b987f62285116906e8079a88e6e4f6b366ca1ff9050b40a357a8aefe9f1bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-2dnav omni-base-laser-sensors omni-base-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base Navigatgion metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
