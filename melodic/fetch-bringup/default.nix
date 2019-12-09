
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, diagnostic-aggregator, fetch-navigation, sensor-msgs, sick-tim, fetch-open-auto-dock, robot-state-publisher, image-proc, catkin, depth-image-proc, openni2-launch, fetch-drivers, ps3joy, graft, fetch-teleop, fetch-description, fetch-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-fetch-bringup";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_bringup/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "d2cc0bed589bf30ce12f119f1970ae8523af35977276098724b3c508bda9bc3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy diagnostic-aggregator fetch-navigation sensor-msgs sick-tim robot-state-publisher fetch-open-auto-dock image-proc depth-image-proc openni2-launch fetch-drivers ps3joy graft fetch-teleop fetch-description fetch-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
