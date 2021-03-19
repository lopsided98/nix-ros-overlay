
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-moveit-config, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, image-proc, joy, openni2-launch, robot-state-publisher, sensor-msgs, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-noetic-fetch-bringup";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/fetch_bringup/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "fdb2a6fbcfc4a9a5f8c06a5f037002ae252e34de6897e4adbfdedcb4f27a314a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ depth-image-proc diagnostic-aggregator fetch-description fetch-drivers fetch-moveit-config fetch-navigation fetch-open-auto-dock fetch-teleop graft image-proc joy openni2-launch robot-state-publisher sensor-msgs sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
