
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-controller-configuration";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_controller_configuration/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "e27336661c2fcda598b68eb94daf378238e4165bb1d366c386e7f4f45f0f6eb7";
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
