
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, arbotix-controllers, arbotix-python, catkin, control-msgs, pincher-arm-description, robot-state-publisher, rospy, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-pincher-arm-bringup";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "pincher_arm-release";
        rev = "release/melodic/pincher_arm_bringup/0.2.0-1";
        sha256 = "sha256-eFpmmfRgmkJrH2Sik9lRKqmpAhFwoHgGHkN2bJ90JE8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib arbotix-controllers arbotix-python control-msgs pincher-arm-description robot-state-publisher rospy sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for starting PhantomX Pincher arm drivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
