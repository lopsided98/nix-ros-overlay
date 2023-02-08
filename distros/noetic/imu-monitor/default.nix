
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-mechanism-controllers, python3Packages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imu-monitor";
  version = "1.6.32-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_robot-release";
        rev = "release/noetic/imu_monitor/1.6.32-1";
        sha256 = "sha256-ExZgSrZ1hoFwWfnra/HXhFZVuEY8se23LJf7YZsTs2U=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-mechanism-controllers python3Packages.pykdl rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a single node that monitors the drift of the IMU
gyroscopes. The results are published to the '/diagnostics' topic and
are aggregated in the PR2 dashboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
