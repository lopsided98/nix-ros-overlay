
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ntrip-client-node, ublox-dgnss-node, ublox-nav-sat-fix-hp-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-humble-ublox-dgnss";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_dgnss/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "0793f9205e5d4a2157a970d1e09482a781ea06b82ddc4f89ba88bf40dc181ce2";
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
