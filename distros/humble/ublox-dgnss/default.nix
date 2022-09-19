
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-dgnss-node, ublox-ubx-interfaces, ublox-ubx-msgs }:
buildRosPackage {
  pname = "ros-humble-ublox-dgnss";
  version = "0.3.5-r4";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/humble/ublox_dgnss/0.3.5-4.tar.gz";
    name = "0.3.5-4.tar.gz";
    sha256 = "755410df72e030ee202be2ecb818a99d58066fd6a5bfca595851be30ba580291";
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
