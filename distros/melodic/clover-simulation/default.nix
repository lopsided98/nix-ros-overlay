
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, led-msgs, rospy, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-simulation";
  version = "0.21.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "clover-release";
        rev = "release/melodic/clover_simulation/0.21.2-1";
        sha256 = "sha256-4Fuc96dKDviBfg14HQX002Kau0e4mcZ1S4uejf/GyIQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros led-msgs rospy xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_simulation package provides worlds and launch files for Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
