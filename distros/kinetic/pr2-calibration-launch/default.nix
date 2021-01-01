
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-estimation, calibration-launch, calibration-msgs, catkin, geometry-msgs, image-cb-detector, image-view, kdl-parser, laser-cb-detector, laser-joint-processor, laser-joint-projector, message-generation, message-runtime, monocam-settler, pr2-dense-laser-snapshotter, pr2-teleop, python-orocos-kdl, robot-mechanism-controllers, rospy, rostest, sensor-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration-launch";
  version = "1.0.11";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_calibration_launch/1.0.11-0.tar.gz";
    name = "1.0.11-0.tar.gz";
    sha256 = "2d674ae37ae8fb4d7bbfadb78f790fbc50f854ac3a7a13a3c41b63ad2ed434dd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ calibration-estimation calibration-launch calibration-msgs geometry-msgs image-cb-detector image-view kdl-parser laser-cb-detector laser-joint-processor laser-joint-projector message-runtime monocam-settler pr2-dense-laser-snapshotter pr2-teleop python-orocos-kdl robot-mechanism-controllers rospy rostest sensor-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and configuration files needed to run the calibration pipeline on PR2. This package is
     still experimental. Expect large changes tp occur.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
