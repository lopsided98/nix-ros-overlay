
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-galactic-ublox-ubx-interfaces";
  version = "0.2.3-r4";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/galactic/ublox_ubx_interfaces/0.2.3-4.tar.gz";
    name = "0.2.3-4.tar.gz";
    sha256 = "df6264657cba012ac0fdce496118a5eac34bbcd4738c3f5330686ae22e0c3be5";
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
