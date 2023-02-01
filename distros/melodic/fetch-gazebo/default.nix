
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, boost, catkin, control-msgs, control-toolbox, depth-image-proc, fetch-description, gazebo, gazebo-dev, gazebo-plugins, gazebo-ros, image-proc, nodelet, rgbd-launch, robot-controllers, robot-controllers-interface, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_gazebo-release";
        rev = "release/melodic/fetch_gazebo/0.9.2-1";
        sha256 = "sha256-V+pVXnl5I6OR1PuSlxOJ7wKyYxyd0aZo3o/m9Z4RFwA=";
      };

  buildType = "catkin";
  buildInputs = [ angles catkin gazebo-dev ];
  propagatedBuildInputs = [ actionlib boost control-msgs control-toolbox depth-image-proc fetch-description gazebo gazebo-plugins gazebo-ros image-proc nodelet rgbd-launch robot-controllers robot-controllers-interface sensor-msgs trajectory-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo package for Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
