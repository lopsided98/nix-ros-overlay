
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph, rosmon-msgs, rosnode, rospy, rosservice, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-leo-fw";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_robot-release";
        rev = "release/melodic/leo_fw/1.2.1-1";
        sha256 = "sha256-j7TIXAUkTHa5of56oqKCsIfmqKCChKueAI3/Dfg0Emo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.whichcraft rosgraph rosmon-msgs rosnode rospy rosservice std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Firmware binary releases and update script for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
