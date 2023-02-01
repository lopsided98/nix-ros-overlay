
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, nav-msgs, roscpp, rostest, sensor-msgs, stage, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-stage-ros";
  version = "1.8.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "stage_ros-release";
        rev = "release/melodic/stage_ros/1.8.0-0";
        sha256 = "sha256-8N+wPzN7yC0rVdaTnq/17aCyQfsbCgLafRrgfPjgous=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ boost geometry-msgs nav-msgs roscpp sensor-msgs stage std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
