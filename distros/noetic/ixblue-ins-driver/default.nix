
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins-driver";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/noetic/ixblue_ins_driver/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "5115c57a766a1ebfcd9b8fe2c53c5a53f5a6de5165962233bc411de74e273bc2";
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
