
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-activity-msgs, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-robot-activity";
  version = "0.1.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "snt-robotics";
        repo = "robot_activity-release";
        rev = "release/melodic/robot_activity/0.1.1-0";
        sha256 = "sha256-6bBmJGz/ExLYYjrjRFs/mNin+WR4zrxkZvM3iUBQxlc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-activity-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity package implements ROS node lifecycle'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
