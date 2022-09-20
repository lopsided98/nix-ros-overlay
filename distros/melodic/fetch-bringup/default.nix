
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-moveit-config, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, image-proc, joy, openni2-launch, ps3joy, robot-state-publisher, sensor-msgs, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-melodic-fetch-bringup";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_bringup/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "120c683bc11d44db7062a463603c0f9246e77c30ab72cb722ade4fb45cef81ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ depth-image-proc diagnostic-aggregator fetch-description fetch-drivers fetch-moveit-config fetch-navigation fetch-open-auto-dock fetch-teleop graft image-proc joy openni2-launch ps3joy robot-state-publisher sensor-msgs sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
