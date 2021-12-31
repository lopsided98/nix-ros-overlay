
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rospy, rqt-gui, rqt-gui-py, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-rqt";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_rqt/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "20e4fe757c575010fbda1b903dfc1f10f78228f828cdbb78bc7dcffaa18a3eb2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rospy rqt-gui rqt-gui-py std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
