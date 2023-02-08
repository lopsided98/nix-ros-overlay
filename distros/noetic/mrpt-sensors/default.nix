
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mrpt-ros-pkg-release";
        repo = "mrpt_sensors-release";
        rev = "release/noetic/mrpt_sensors/0.0.2-1";
        sha256 = "sha256-+aiZEQzrirC1eOu5md/Rkrm2wNbNutYD11mpc2RwRCI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-generic-sensor mrpt-sensorlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes for various robotics sensors via mrpt-hwdrivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
