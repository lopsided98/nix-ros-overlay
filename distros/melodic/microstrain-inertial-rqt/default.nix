
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rospy, rqt-gui, rqt-gui-py, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-microstrain-inertial-rqt";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/melodic/microstrain_inertial_rqt/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "77900553fe061f856b8dfa7d530ec27c408ed5425dde215913e3c747f31a3b59";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rospy rqt-gui rqt-gui-py std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
