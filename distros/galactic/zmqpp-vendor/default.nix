
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cppzmq }:
buildRosPackage {
  pname = "ros-galactic-zmqpp-vendor";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/tier4/zmqpp_vendor-release/archive/release/galactic/zmqpp_vendor/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "d399685344debd3bfc100cc85a98510db16cd7dc655d5edc3195405ab89779a4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cppzmq ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for zmqpp'';
    license = with lib.licenses; [ asl20 "Mozilla-Public-License-2.0" ];
  };
}
