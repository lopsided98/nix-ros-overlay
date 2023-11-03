
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dwa-local-planner, dynamic-reconfigure, euscollada, fake-localization, map-server, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-gazebo, pr2-mechanism-msgs, pr2-msgs, pr2-navigation-config, pr2-navigation-slam, robot-state-publisher, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-pr2eus";
  version = "0.3.15-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/pr2eus/0.3.15-3.tar.gz";
    name = "0.3.15-3.tar.gz";
    sha256 = "6c262ab311df2cedfae2cf70166cc1b7fb3abc5ca26a342882f2fba1cdfbd45a";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosgraph-msgs ];
  checkInputs = [ dwa-local-planner fake-localization map-server pr2-gazebo pr2-navigation-config pr2-navigation-slam robot-state-publisher rostest ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure euscollada move-base-msgs nav-msgs pr2-controllers-msgs pr2-description pr2-mechanism-msgs pr2-msgs roseus sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
