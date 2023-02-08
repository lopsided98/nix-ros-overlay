
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, rosconsole, roslint }:
buildRosPackage {
  pname = "ros-melodic-mecanum-gazebo-plugin";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "ridgeback_simulator-release";
        rev = "release/melodic/mecanum_gazebo_plugin/0.1.1-1";
        sha256 = "sha256-2OA+V1/y+ivyK0kyGT9X+UTFK3W5wtm2Oqlx5m/ntus=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ gazebo rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin which uses directional friction to simulate mecanum wheels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
