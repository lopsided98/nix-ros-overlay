
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller }:
buildRosPackage {
  pname = "ros-kinetic-position-controllers";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/position_controllers/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "47b5e54e19a9ada4e0d4355f4c1ff1e0eeb9a58c2d09bc9474c23848bf718de3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
