
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, joy, ps3joy, robot-state-publisher, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-melodic-freight-bringup";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/freight_bringup/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "7b06775c7543e57a19625778ee7165df819dcf336947f32b751772a841c6cc78";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-aggregator fetch-description fetch-drivers fetch-navigation fetch-open-auto-dock fetch-teleop graft joy ps3joy robot-state-publisher sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for freight'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
