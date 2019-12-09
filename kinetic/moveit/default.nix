
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, moveit-commander, moveit-setup-assistant, catkin, moveit-ros, moveit-planners, moveit-plugins }:
buildRosPackage {
  pname = "ros-kinetic-moveit";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "d8da29a3f6f60b04504ecfa565e219085a2b63cd52e91bcc378dc50b37677c4e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core moveit-commander moveit-setup-assistant moveit-ros moveit-planners moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt!. Until Summer 2016 MoveIt! had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
