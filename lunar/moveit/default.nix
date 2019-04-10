
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros, moveit-core, moveit-commander, moveit-planners, moveit-plugins, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-lunar-moveit";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit/0.9.12-1.tar.gz;
    sha256 = "11f2b083dba24035c045dbd1058919e01c8a3b172d274e97095b979dc369d7e7";
  };

  propagatedBuildInputs = [ moveit-commander moveit-core moveit-planners moveit-plugins moveit-setup-assistant moveit-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt!. Until Summer 2016 MoveIt! had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    #license = lib.licenses.BSD;
  };
}
