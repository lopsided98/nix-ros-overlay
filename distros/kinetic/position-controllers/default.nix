
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller }:
buildRosPackage {
  pname = "ros-kinetic-position-controllers";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/position_controllers/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "e4faa483453aff3e02ed4ca7d00bd93b9b5db3ef6852eccdcf0c1b13f221b0b8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
