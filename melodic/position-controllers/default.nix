
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller }:
buildRosPackage {
  pname = "ros-melodic-position-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/position_controllers/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "4fc2790e75f82b2a202e46c7c851f61348aaf1f355f69cb940ead157d5e43368";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
