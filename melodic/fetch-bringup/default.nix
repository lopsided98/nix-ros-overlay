
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ps3joy, depth-image-proc, fetch-open-auto-dock, fetch-drivers, image-proc, sensor-msgs, joy, catkin, fetch-moveit-config, fetch-navigation, fetch-teleop, robot-state-publisher, fetch-description, openni2-launch, graft, sick-tim, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-fetch-bringup";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_bringup/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "d2cc0bed589bf30ce12f119f1970ae8523af35977276098724b3c508bda9bc3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ps3joy depth-image-proc fetch-open-auto-dock fetch-drivers sensor-msgs joy openni2-launch fetch-moveit-config robot-state-publisher fetch-teleop fetch-description fetch-navigation image-proc sick-tim graft diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
