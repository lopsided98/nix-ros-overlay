
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, pluginlib, pr2-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-tilt-controller-filter";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/laser_tilt_controller_filter/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "41f120ac8c70022e91763ef75c1fb26fbd594c3e8115439aa55dacbf37e6df76";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters pluginlib pr2-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_tilt_controller_filter'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
