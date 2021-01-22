
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-ins-driver";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/kinetic/ixblue_ins_driver/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "1c11dcf92e9880ac5cebbcd8d8f33ad5461f10542ab272871e8ec3e0f6a7b214";
  };

  buildType = "catkin";
  checkInputs = [ boost libpcap ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater ixblue-ins-msgs ixblue-stdbin-decoder nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iXblue_ins_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
