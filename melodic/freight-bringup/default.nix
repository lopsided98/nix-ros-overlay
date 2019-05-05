
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ps3joy, fetch-open-auto-dock, fetch-drivers, joy, catkin, fetch-navigation, robot-state-publisher, fetch-teleop, fetch-description, graft, sick-tim, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-freight-bringup";
  version = "0.8.6";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/freight_bringup/0.8.6-0.tar.gz;
    sha256 = "303f84a14b664ef2e11fc0d5cde7727ceda68cd925a10ff5ddefdec5420a9676";
  };

  propagatedBuildInputs = [ ps3joy fetch-open-auto-dock fetch-drivers joy fetch-description robot-state-publisher fetch-teleop graft fetch-navigation sick-tim diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for freight'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
