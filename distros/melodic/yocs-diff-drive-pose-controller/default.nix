
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-threads, geometry-msgs, nodelet, pluginlib, roscpp, sensor-msgs, std-msgs, tf, yocs-controllers, yocs-math-toolkit }:
buildRosPackage {
  pname = "ros-melodic-yocs-diff-drive-pose-controller";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_diff_drive_pose_controller/0.8.2-0";
        sha256 = "sha256-PDFQBACQS3TEzQw5kLKvbtttqZS+DdI2wAz2pCnITzs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-threads geometry-msgs nodelet pluginlib roscpp sensor-msgs std-msgs tf yocs-controllers yocs-math-toolkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller for driving a differential drive base to a pose goal or along a path specified by multiple poses.
    A pose consists of a 2D position (x,y) and a 1D orientation (theta).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
