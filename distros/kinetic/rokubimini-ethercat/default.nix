
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-ethercat";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_ethercat/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_ethercat-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_ethercat-0.5.9-2.tar.gz";
    sha256 = "41fc3f91e7ff7e2991a460a41ccc6ea9eb5567efc39474fe69023a9e5a42f4c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
