
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pal-hey5-controller-configuration, pal-hey5-description }:
buildRosPackage {
  pname = "ros-humble-pal-hey5";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "e0dbc2fc4d461f91b1b43fcfa966304a336eae5e2c627a3baf6fa3ba71e62b84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pal-hey5-controller-configuration pal-hey5-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_hey5 package";
    license = with lib.licenses; [ asl20 ];
  };
}
