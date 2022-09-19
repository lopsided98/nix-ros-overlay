
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-ublox-ubx-interfaces";
  version = "0.3.5-r4";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/humble/ublox_ubx_interfaces/0.3.5-4.tar.gz";
    name = "0.3.5-4.tar.gz";
    sha256 = "cb92c32296b59aa14e6562cf5711c28fec16b79e10c0fa87c0954f7466b9c59f";
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
