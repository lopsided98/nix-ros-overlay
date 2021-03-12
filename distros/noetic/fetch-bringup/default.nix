
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-moveit-config, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, image-proc, joy, openni2-launch, robot-state-publisher, sensor-msgs, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-noetic-fetch-bringup";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/fetch_bringup/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "7c5fc91b4d57c5ee2e755615c8fd7e6dbe9b5d4c0f7204a19b945dce2e0c6d95";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ depth-image-proc diagnostic-aggregator fetch-description fetch-drivers fetch-moveit-config fetch-navigation fetch-open-auto-dock fetch-teleop graft image-proc joy openni2-launch robot-state-publisher sensor-msgs sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
