
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-network-detector";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_detector/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "3fe42df98f3203e253a6029d3fb55e86e8d0b82c482754232de296bfe1f299c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that watches a given network interface and publishes
     whether it is both UP and RUNNING (indicating that a cable is
     plugged into it and communication is happening, for instance) or
     not.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
