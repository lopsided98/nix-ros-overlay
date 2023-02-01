
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, joint-state-publisher, robot-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-description";
  version = "0.7.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "FUJISOFT-Robotics";
        repo = "fsrobo_r-release";
        rev = "release/melodic/fsrobo_r_description/0.7.1-1";
        sha256 = "sha256-9RyfWYHQT8w64g6stMVXsNzZdOjKkpbbByMyiwg+0s0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ gazebo joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>URDF Description package for FSRobo-R</p>
    <p>This package contains configuration data, 3D models and launch files
for FSRobo-R robot</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
