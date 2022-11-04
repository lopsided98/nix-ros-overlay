
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, libyamlcpp, play-motion-builder-msgs, play-motion-msgs, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-play-motion-builder";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-robotics/play_motion_builder-release/archive/release/melodic/play_motion_builder/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "9e608aa00a7d516c67dee948ddc923a6190e20148f75ce7d84fd596105045cb6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib libyamlcpp play-motion-builder-msgs play-motion-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The play_motion_builder package, a node to handle the creation of new motions for play_motion.'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
