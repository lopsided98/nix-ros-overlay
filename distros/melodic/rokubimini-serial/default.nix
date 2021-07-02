
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, avrdude, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-serial";
  version = "0.6.0-r5";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/rokubimini_serial/0.6.0-5/bota_driver-release-release-melodic-rokubimini_serial-0.6.0-5.tar.gz";
    name = "bota_driver-release-release-melodic-rokubimini_serial-0.6.0-5.tar.gz";
    sha256 = "61f460714694cafafac8cf3f213d1f5fc4a371a4f73bb00d78c39b24d6503625";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ avrdude rokubimini rokubimini-bus-manager rokubimini-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Serial implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
