
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros, moveit-core, moveit-commander, moveit-planners, moveit-plugins, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-melodic-moveit";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit/1.0.2-1.tar.gz;
    sha256 = "7ec4031dbef08128c3a4ed9b7f82b6a01700046c221076e236ce5c352d27084b";
  };

  propagatedBuildInputs = [ moveit-ros moveit-commander moveit-core moveit-planners moveit-plugins moveit-setup-assistant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt!. Until Summer 2016 MoveIt! had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
