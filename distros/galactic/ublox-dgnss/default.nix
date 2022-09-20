
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-dgnss-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-galactic-ublox-dgnss";
  version = "0.2.3-r4";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/galactic/ublox_dgnss/0.2.3-4.tar.gz";
    name = "0.2.3-4.tar.gz";
    sha256 = "f78bd221cef424ca70fbf61ec88bdbfa2c7eb37990d92317595515450bc1fd5e";
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
