
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ixblue-ins-driver";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/ixblue_ins_driver/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "cb792646f9d7574780e5c7cf8f56fc83b8d1ed526363e472121813c830b12a45";
  };

  buildType = "catkin";
  checkInputs = [ boost libpcap ];
  propagatedBuildInputs = [ boost ixblue-ins-msgs ixblue-stdbin-decoder nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iXblue_ins_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
