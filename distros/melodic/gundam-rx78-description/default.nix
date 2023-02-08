
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-gundam-rx78-description";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gundam-global-challenge";
        repo = "gundam_robot-release";
        rev = "release/melodic/gundam_rx78_description/0.0.3-1";
        sha256 = "sha256-mMnsJ+01aA7ZzEwOlQnHnz85IKWlsK7NysN9Qg1vkUE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_description contains the ROS URDF file of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ "TERMS-OF-USE-FOR-GUNDAM-RESEARCH-OPEN-SIMULATOR-Attribution-NonCommercial-ShareAlike" bsdOriginal ];
  };
}
