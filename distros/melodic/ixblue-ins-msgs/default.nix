
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ixblue-ins-msgs";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/ixblue_ins_msgs/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "08c1cb7de51604655cffee31329002fe4064cda296ca35f165da2bc21bdca8a4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ixblue INS defined messages package'';
    license = with lib.licenses; [ mit ];
  };
}
