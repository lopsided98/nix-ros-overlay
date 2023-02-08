
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, pythonPackages, roslib, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jderobot-color-tuner";
  version = "0.0.5-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JdeRobot";
        repo = "ColorTuner-release";
        rev = "release/melodic/jderobot_color_tuner/0.0.5-2";
        sha256 = "sha256-tdsWZFwUTsgpNiKbpIuUWCPHf6djVvl3dCXd/2PmGyA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport pythonPackages.rospkg roslib rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_color_tuner tool package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
