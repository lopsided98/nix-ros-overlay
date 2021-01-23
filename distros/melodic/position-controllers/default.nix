
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, pluginlib }:
buildRosPackage {
  pname = "ros-melodic-position-controllers";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/position_controllers/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "62286043749e79c870c58f360e30a375fc2d9d3ff6af83e03a005acdd8689fd4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
