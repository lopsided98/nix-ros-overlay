
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-hey5-controller-configuration";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_hey5-release/archive/release/humble/pal_hey5_controller_configuration/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "3c36c50f4f4a6486671bea7c03f48f52cbdf5894c5b79b850bbf39ae3677e870";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_hey5_controller_configuration package'';
    license = with lib.licenses; [ asl20 ];
  };
}
