
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, joy, robot-state-publisher, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-noetic-freight-bringup";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/freight_bringup/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "086782f7b8b80bb9bc94daf0d93bdc6f39bab06369ea872ae3f83c086a98f1ae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator fetch-description fetch-drivers fetch-navigation fetch-open-auto-dock fetch-teleop graft joy robot-state-publisher sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for freight'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
