
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, microstrain-inertial-msgs, nav-msgs, rospy, rqt-gui, rqt-gui-py, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-microstrain-inertial-rqt";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/melodic/microstrain_inertial_rqt/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "08dbb7eee67d1be9f1c44675b3a57c7d74324e1e875629da1fb0c96b703c5dff";
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
