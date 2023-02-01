
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen-conversions, filters, geometry-msgs, pluginlib, roscpp, rosparam-handler, rostest, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-iirob-filters";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "iirob_filters-release";
        rev = "release/melodic/iirob_filters/0.9.2-1";
        sha256 = "sha256-hYWW0UZrfxhC2cnV0a+xCngOscqiqtRnUx5yc9cPyxM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure eigen-conversions filters geometry-msgs pluginlib roscpp rosparam-handler rostest tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iirob_filters package implements following filters:
      1) Low-Pass
      2) Moving Mean
      3) Gravity Compensation (used for force-torque sensors)
      4) Threshold Filter
      5) Kalman Filter'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
