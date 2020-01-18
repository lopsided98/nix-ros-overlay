
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, rqt-gui }:
buildRosPackage {
  pname = "ros-kinetic-rqt-controller-manager";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/rqt_controller_manager/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "cff3814b9b0010aa55c60b1dc2b773dc71bffbf91c9df9ef2892f1f7178e49b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_controller_manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
