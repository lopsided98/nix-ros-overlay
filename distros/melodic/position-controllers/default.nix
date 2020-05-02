
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, forward-command-controller, pluginlib }:
buildRosPackage {
  pname = "ros-melodic-position-controllers";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/position_controllers/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "99e5a31cfeacf9bbb3676680a31610836d9b3d7eaca5af206f7425a34003cbf0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface forward-command-controller pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''position_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
