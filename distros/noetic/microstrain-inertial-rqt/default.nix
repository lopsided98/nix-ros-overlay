
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rospy, rqt-gui, rqt-gui-py, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-rqt";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_rqt/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "8e65687eee1e31fd98ac3449be96192594fd3f861c04f4dfd12e5bb879c79a0f";
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
