
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-estimation, calibration-launch, calibration-msgs, catkin, geometry-msgs, image-cb-detector, image-view, kdl-parser, laser-cb-detector, laser-joint-processor, laser-joint-projector, message-generation, message-runtime, monocam-settler, pr2-dense-laser-snapshotter, pr2-teleop, python-orocos-kdl, robot-mechanism-controllers, rospy, rostest, sensor-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-launch";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/pr2_calibration-release/archive/release/melodic/pr2_calibration_launch/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "837c7337131f079244deacf4ac3d5e8314fe8f2e9453a9852ceeb53f9491b59a";
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
