
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, calibration-msgs, catkin, python-orocos-kdl, pythonPackages, rospy, rostest, sensor-msgs, urdfdom-py, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-calibration-estimation";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration_estimation/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "b6d902974beb94a2868f04a7c820517a153083bf0c316b91036a746a411a2970";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ calibration-msgs python-orocos-kdl pythonPackages.matplotlib pythonPackages.scipy rospy rostest sensor-msgs urdfdom-py visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Runs an optimization to estimate the a robot's kinematic parameters. This package is a
    generic rewrite of pr2_calibration_estimation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
