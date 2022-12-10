
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-interfaces";
  version = "0.3.5-r3";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/rolling/ublox_ubx_interfaces/0.3.5-3.tar.gz";
    name = "0.3.5-3.tar.gz";
    sha256 = "5d5a43710b5cdc4f64eb894e6d281c9d36f25c6775d520959c532abc0b10191f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''UBLOX UBX Interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
