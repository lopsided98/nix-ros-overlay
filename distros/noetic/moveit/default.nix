
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-noetic-moveit";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "db7f1f41fbed3931afe64539575878a326819471572d08b6cbde0b04b6446ff4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt. Until Summer 2016 MoveIt had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
