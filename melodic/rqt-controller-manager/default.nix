
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, rqt-gui, catkin }:
buildRosPackage {
  pname = "ros-melodic-rqt-controller-manager";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/rqt_controller_manager/0.15.1-0.tar.gz;
    sha256 = "d353d8ca83aa76818876e856d29fb0c5acebc9b55ef54085959a12af1224c8d7";
  };

  propagatedBuildInputs = [ controller-manager rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_controller_manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
