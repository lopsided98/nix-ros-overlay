
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-dgnss-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-dgnss";
  version = "0.3.5-r3";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/rolling/ublox_dgnss/0.3.5-3.tar.gz";
    name = "0.3.5-3.tar.gz";
    sha256 = "bc1705b81508739a893d9026d9d0fb2924f58e992cb7811566afbc4411442519";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ublox-dgnss-node ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a ublox_dgnss node for a u-blox GPS DGNSS receiver using Gen 9 UBX Protocol'';
    license = with lib.licenses; [ asl20 ];
  };
}
