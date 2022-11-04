
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-play-motion-builder-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-robotics/play_motion_builder-release/archive/release/melodic/play_motion_builder_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6306b6896ac2e6c7455dc94b499552b70e699c7794b7b21da133dd27ba7fba05";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The play_motion_builder_msgs package'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
