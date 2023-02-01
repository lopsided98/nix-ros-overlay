
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genpy, pythonPackages, rocon-app-manager-msgs, rocon-bubble-icons, rocon-console, rocon-icons, rocon-interaction-msgs, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, roslint, rospy, rostest, rosunit, std-msgs, unique-id }:
buildRosPackage {
  pname = "ros-melodic-rocon-interactions";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_interactions/0.3.2-0";
        sha256 = "sha256-i3ZJuqBhEcZjmzaA8VHlWyxiJBcCFjFi3axSByPIGY0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg roslint rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ genpy pythonPackages.rospkg rocon-app-manager-msgs rocon-bubble-icons rocon-console rocon-icons rocon-interaction-msgs rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri rospy std-msgs unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interaction management for human interactive agents in the concert.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
