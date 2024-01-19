
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ntrip-client-node, ublox-dgnss-node, ublox-nav-sat-fix-hp-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-humble-ublox-dgnss";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_dgnss/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "982bce6d30cddd3baabe022f60d82c1039820de214e1fa1976ef3be0b64fab8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ntrip-client-node ublox-dgnss-node ublox-nav-sat-fix-hp-node ublox-ubx-interfaces ublox-ubx-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a ublox_dgnss node for a u-blox GPS DGNSS receiver using Gen 9 UBX Protocol'';
    license = with lib.licenses; [ asl20 ];
  };
}
