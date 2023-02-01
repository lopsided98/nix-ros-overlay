
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, nextage-description, nextage-moveit-config, ros-controllers, rostest }:
buildRosPackage {
  pname = "ros-melodic-nextage-gazebo";
  version = "0.8.6-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_nextage-release";
        rev = "release/melodic/nextage_gazebo/0.8.6-3";
        sha256 = "sha256-38mJaNFPXL4wRWF1y8Dkwkg8/Wxa/FgkJDnVq+kzJiE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control nextage-description nextage-moveit-config ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation for NEXTAGE Open'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
