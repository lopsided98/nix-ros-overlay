
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-dgnss-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-dgnss";
  version = "0.3.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_dgnss/0.3.5-4.tar.gz";
    name = "0.3.5-4.tar.gz";
    sha256 = "e767f3422d7783d6e0d5c2e8909f41e2064615a49faa37f450d1768e5cc7e0c6";
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
