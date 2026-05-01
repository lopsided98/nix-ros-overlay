
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ntrip-client-node, ublox-dgnss-node, ublox-nav-sat-fix-hp-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ublox-dgnss";
  version = "0.7.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/lyrical/ublox_dgnss/0.7.4-3.tar.gz";
    name = "0.7.4-3.tar.gz";
    sha256 = "6649e64b60ac85359b018168299a738b5a69cca430aac33344008b0dbe7e1372";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ntrip-client-node ublox-dgnss-node ublox-nav-sat-fix-hp-node ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a ublox_dgnss node for a u-blox GPS DGNSS receiver using Gen 9 UBX Protocol";
    license = with lib.licenses; [ asl20 ];
  };
}
