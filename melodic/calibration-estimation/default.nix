
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-orocos-kdl, sensor-msgs, catkin, pythonPackages, rostest, urdfdom-py, rospy, visualization-msgs, calibration-msgs }:
buildRosPackage {
  pname = "ros-melodic-calibration-estimation";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration_estimation/0.10.14-0.tar.gz;
    sha256 = "b6d902974beb94a2868f04a7c820517a153083bf0c316b91036a746a411a2970";
  };

  propagatedBuildInputs = [ calibration-msgs python-orocos-kdl sensor-msgs pythonPackages.scipy rostest rospy visualization-msgs pythonPackages.matplotlib urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Runs an optimization to estimate the a robot's kinematic parameters. This package is a
    generic rewrite of pr2_calibration_estimation.'';
    #license = lib.licenses.BSD;
  };
}
