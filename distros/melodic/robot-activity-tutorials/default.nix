
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-activity, roscpp, roslint, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-robot-activity-tutorials";
  version = "0.1.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "snt-robotics";
        repo = "robot_activity-release";
        rev = "release/melodic/robot_activity_tutorials/0.1.1-0";
        sha256 = "sha256-FU/jGiL87m78t1STkbHHwErph1ndPpV1EdJS3XfbQEQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ robot-activity roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
