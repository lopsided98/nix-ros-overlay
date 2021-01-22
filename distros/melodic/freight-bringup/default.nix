
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, joy, ps3joy, robot-state-publisher, sick-tim }:
buildRosPackage {
  pname = "ros-melodic-freight-bringup";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/freight_bringup/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "4c838cc7caa4015cd00c8f8e1ba9e513b82094ae0982e120dd09497ec05c2d6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator fetch-description fetch-drivers fetch-navigation fetch-open-auto-dock fetch-teleop graft joy ps3joy robot-state-publisher sick-tim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for freight'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
