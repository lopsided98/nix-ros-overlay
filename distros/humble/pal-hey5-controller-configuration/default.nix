
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-controller-configuration";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_controller_configuration/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "be3fd4cf9c90ecc150d69cd68d12307434912989836f47c3b118460ca04fff2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The pal_hey5_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
