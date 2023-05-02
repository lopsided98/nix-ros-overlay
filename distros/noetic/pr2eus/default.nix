
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dwa-local-planner, dynamic-reconfigure, euscollada, fake-localization, map-server, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-gazebo, pr2-mechanism-msgs, pr2-msgs, pr2-navigation-config, pr2-navigation-slam, robot-state-publisher, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-pr2eus";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/pr2eus/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "97c4f5da735e98fd507c2344c9f0cdd544855a584e015f5a1f2a7406c514bef5";
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
