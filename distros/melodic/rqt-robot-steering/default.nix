
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-steering";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/melodic/rqt_robot_steering/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "a66bedc6c4ed106b7528912f4b911b5b33279df3029caeb5379ef2230bf4881c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
