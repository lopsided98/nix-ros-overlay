
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ixblue-ins-driver";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/ixblue_ins_driver/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "19f76a53801661d1c5a65337fc7bf37aef1eca6d768bace9daf8b963ffaa484d";
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
