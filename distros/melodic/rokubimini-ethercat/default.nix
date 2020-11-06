
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-bus-manager, rokubimini-msgs, soem }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-ethercat";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_ethercat/0.5.5-1";
    name = "archive.tar.gz";
    sha256 = "483770e8283c95b9720c2d56597813fc269fc285b7590eed41f44bcf866e241b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-bus-manager rokubimini-msgs soem ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rokubimini Ethercat implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
