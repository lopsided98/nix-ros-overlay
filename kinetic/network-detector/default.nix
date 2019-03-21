
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-network-detector";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/network_detector/1.0.15-0.tar.gz;
    sha256 = "1517add1961f39be682a01927313133edfa6394d67772586953d4f5b41875a29";
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
