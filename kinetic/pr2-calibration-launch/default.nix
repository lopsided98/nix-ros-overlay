
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, calibration-estimation, rostest, kdl-parser, sensor-msgs, image-cb-detector, pr2-teleop, calibration-msgs, python-orocos-kdl, calibration-launch, laser-joint-processor, stereo-image-proc, catkin, laser-joint-projector, monocam-settler, rospy, message-generation, pr2-dense-laser-snapshotter, robot-mechanism-controllers, image-view, message-runtime, laser-cb-detector }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration-launch";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_calibration_launch/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "2d674ae37ae8fb4d7bbfadb78f790fbc50f854ac3a7a13a3c41b63ad2ed434dd";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs calibration-estimation rostest kdl-parser sensor-msgs image-cb-detector pr2-teleop calibration-msgs python-orocos-kdl calibration-launch laser-joint-processor stereo-image-proc laser-joint-projector message-generation monocam-settler pr2-dense-laser-snapshotter rospy robot-mechanism-controllers image-view laser-cb-detector ];
  propagatedBuildInputs = [ geometry-msgs calibration-estimation rostest kdl-parser sensor-msgs image-cb-detector pr2-teleop calibration-msgs python-orocos-kdl calibration-launch laser-joint-processor stereo-image-proc laser-joint-projector monocam-settler pr2-dense-laser-snapshotter rospy robot-mechanism-controllers image-view message-runtime laser-cb-detector ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and configuration files needed to run the calibration pipeline on PR2. This package is
     still experimental. Expect large changes tp occur.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
