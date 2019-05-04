
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros, moveit-core, moveit-commander, moveit-planners, moveit-plugins, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-kinetic-moveit";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit/0.9.15-0.tar.gz;
    sha256 = "889acbbd2ae138166d6f864da9ef49a9c429396248318de2a59de8412d29f908";
  };

  propagatedBuildInputs = [ moveit-ros moveit-commander moveit-core moveit-planners moveit-plugins moveit-setup-assistant ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential package of MoveIt!. Until Summer 2016 MoveIt! had been developed over multiple repositories, where developers' usability and maintenance effort was non-trivial. See <a href="http://discourse.ros.org/t/migration-to-one-github-repo-for-moveit/266/34">the detailed discussion for the merge of several repositories</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
