
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, urdfdom-py, pythonPackages, catkin, calibration-msgs, python-orocos-kdl, visualization-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-calibration-estimation";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_estimation/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "73ed9829ba3d29d76e91ed927415a9d8a071502162efdfb8a3aeebee500f1a40";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs pythonPackages.matplotlib pythonPackages.scipy urdfdom-py calibration-msgs python-orocos-kdl visualization-msgs rospy rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Runs an optimization to estimate the a robot's kinematic parameters. This package is a
    generic rewrite of pr2_calibration_estimation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
