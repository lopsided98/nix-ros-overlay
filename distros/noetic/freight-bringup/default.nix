
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, joy, robot-state-publisher, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-noetic-freight-bringup";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/freight_bringup/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "430799bc6412c9f30e6c53f1ae003e6469930241bf846d5a901f520873db2ff8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-aggregator fetch-description fetch-drivers fetch-navigation fetch-open-auto-dock fetch-teleop graft joy robot-state-publisher sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for freight'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
