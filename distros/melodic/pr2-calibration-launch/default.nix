
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-estimation, calibration-launch, calibration-msgs, catkin, geometry-msgs, image-cb-detector, image-view, kdl-parser, laser-cb-detector, laser-joint-processor, laser-joint-projector, message-generation, message-runtime, monocam-settler, pr2-dense-laser-snapshotter, pr2-teleop, python-orocos-kdl, robot-mechanism-controllers, rospy, rostest, sensor-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-launch";
  version = "1.0.11-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UNR-RoboticsResearchLab";
        repo = "pr2_calibration-release";
        rev = "release/melodic/pr2_calibration_launch/1.0.11-3";
        sha256 = "sha256-RAJP8zSdqe5DxXuLC5iud2OHSXx9Tn6tYjMlIGWzY8M=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ calibration-estimation calibration-launch calibration-msgs geometry-msgs image-cb-detector image-view kdl-parser laser-cb-detector laser-joint-processor laser-joint-projector message-runtime monocam-settler pr2-dense-laser-snapshotter pr2-teleop python-orocos-kdl robot-mechanism-controllers rospy rostest sensor-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and configuration files needed to run the calibration pipeline on PR2. This package is
     still experimental. Expect large changes tp occur.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
