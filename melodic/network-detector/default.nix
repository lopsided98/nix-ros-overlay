
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-network-detector";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_detector/1.0.15-0.tar.gz;
    sha256 = "9b70f563ea769e708c76a0643433f848dddc6277e5b87a5d5990d1d2d98b0c51";
  };

  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ std-msgs catkin roscpp ];

  meta = {
    description = ''A ROS node that watches a given network interface and publishes
     whether it is both UP and RUNNING (indicating that a cable is
     plugged into it and communication is happening, for instance) or
     not.'';
    #license = lib.licenses.BSD;
  };
}
