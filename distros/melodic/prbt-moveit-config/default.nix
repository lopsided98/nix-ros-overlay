
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-core, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-planning, moveit-ros-visualization, moveit-simple-controller-manager, pluginlib, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-support, robot-state-publisher, roscpp, roslaunch, rostest, rosunit, rviz, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.23-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_robots-release";
        rev = "release/melodic/prbt_moveit_config/0.5.23-1";
        sha256 = "sha256-bh8XEV7o/U48LTELZn8tODOXK0BwHinQh6z3+WLTW08=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-core moveit-ros-planning pluginlib roscpp roslaunch rostest rosunit ];
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-support robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
