
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-melodic-moveit";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "ce38602900aca0b81cf1598a3fa21f935930834bd309176e901bfc4300310d5d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt!. Until Summer 2016 MoveIt! had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
