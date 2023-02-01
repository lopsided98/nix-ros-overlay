
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-planner-testutils";
  version = "1.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit-release";
        rev = "release/melodic/pilz_industrial_motion_planner_testutils/1.0.11-1";
        sha256 = "sha256-fb/daq8tBk5TJdYKk6jH4dbi2Lx7Rim++/ADztAsfgg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
