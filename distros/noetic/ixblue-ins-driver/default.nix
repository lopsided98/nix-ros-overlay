
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins-driver";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/noetic/ixblue_ins_driver/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "9a5a6aa9060c09b77f8f3b04912a56958248a598f727b1ee5e4cc8d3e4fbc7c7";
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
