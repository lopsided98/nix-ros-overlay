
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, hardware-interface, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roscpp, roslaunch, roslint, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fake-joint-driver";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "fake_joint-release";
        rev = "release/melodic/fake_joint_driver/0.0.4-1";
        sha256 = "sha256-hdFyMkt1M2s5xUqbMl/m4xZ8V50kSKIkCOvGsHK0ebc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher roscpp roslaunch urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fake_joint_driver package'';
    license = with lib.licenses; [ asl20 ];
  };
}
