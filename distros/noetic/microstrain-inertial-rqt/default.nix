
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rospy, rqt-gui, rqt-gui-py, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-rqt";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_rqt/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "504a1178e81a672622857c8dbb26ec9a5144a06b3339712190d248cede592e56";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs microstrain-inertial-msgs nav-msgs rospy rqt-gui rqt-gui-py std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The microstrain_inertial_rqt package provides several RQT widgets to view the status of Microstrain devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
