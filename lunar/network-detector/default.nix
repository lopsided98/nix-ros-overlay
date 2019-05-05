
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-network-detector";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/network_detector/1.0.15-0.tar.gz;
    sha256 = "89949f81dcdaf42e880cf16dec9f3a92dfa0051504d38f3888f82e57eac7ce31";
  };

  buildInputs = [ std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that watches a given network interface and publishes
     whether it is both UP and RUNNING (indicating that a cable is
     plugged into it and communication is happening, for instance) or
     not.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
