
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, rqt-gui }:
buildRosPackage {
  pname = "ros-kinetic-rqt-controller-manager";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/rqt_controller_manager/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "55d4a3447b12e9f36ca350b07cd018bb88f93f43728c4aa9fb4385779c15f240";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_controller_manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
