
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-view, laser-joint-processor, rospy, geometry-msgs, laser-cb-detector, image-cb-detector, message-generation, message-runtime, calibration-msgs, catkin, robot-mechanism-controllers, stereo-image-proc, pr2-dense-laser-snapshotter, kdl-parser, python-orocos-kdl, laser-joint-projector, sensor-msgs, monocam-settler, calibration-launch, pr2-teleop, rostest, calibration-estimation }:
buildRosPackage {
  pname = "ros-kinetic-pr2-calibration-launch";
  version = "1.0.11";

  src = fetchurl {
    url = https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/kinetic/pr2_calibration_launch/1.0.11-0.tar.gz;
    sha256 = "2d674ae37ae8fb4d7bbfadb78f790fbc50f854ac3a7a13a3c41b63ad2ed434dd";
  };

  buildInputs = [ laser-joint-processor rospy image-view geometry-msgs laser-cb-detector image-cb-detector message-generation calibration-msgs robot-mechanism-controllers stereo-image-proc pr2-dense-laser-snapshotter kdl-parser python-orocos-kdl laser-joint-projector sensor-msgs monocam-settler calibration-launch pr2-teleop rostest calibration-estimation ];
  propagatedBuildInputs = [ laser-joint-processor rospy image-view geometry-msgs laser-cb-detector image-cb-detector message-runtime calibration-msgs robot-mechanism-controllers stereo-image-proc pr2-dense-laser-snapshotter kdl-parser python-orocos-kdl laser-joint-projector sensor-msgs monocam-settler calibration-launch pr2-teleop rostest calibration-estimation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and configuration files needed to run the calibration pipeline on PR2. This package is
     still experimental. Expect large changes tp occur.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
