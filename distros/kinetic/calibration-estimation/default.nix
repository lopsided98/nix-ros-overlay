
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, catkin, python-orocos-kdl, pythonPackages, rospy, rostest, sensor-msgs, urdfdom-py, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-calibration-estimation";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_estimation/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "73ed9829ba3d29d76e91ed927415a9d8a071502162efdfb8a3aeebee500f1a40";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ calibration-msgs python-orocos-kdl pythonPackages.matplotlib pythonPackages.scipy rospy rostest sensor-msgs urdfdom-py visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Runs an optimization to estimate the a robot's kinematic parameters. This package is a
    generic rewrite of pr2_calibration_estimation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
