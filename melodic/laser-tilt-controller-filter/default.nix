
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, pr2-msgs, pluginlib, filters, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-laser-tilt-controller-filter";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/laser_tilt_controller_filter/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "ded7f78a4d42917ee2799ee522172f0c1c2251450f2752f88534f6a6ea2bb2a3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs pr2-msgs pluginlib filters roscpp ];
  propagatedBuildInputs = [ sensor-msgs pr2-msgs pluginlib filters roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_tilt_controller_filter'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
