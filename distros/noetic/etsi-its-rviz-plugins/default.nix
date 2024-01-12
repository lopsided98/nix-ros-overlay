
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-rviz-plugins";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_rviz_plugins/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9b2d1ba6f73b63276b92e3cce1119d0c05d01126d6fa57c67a6aa276969f3563";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-environment ];

  meta = {
    description = ''RViz plugin for ROS 2 messages based on ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
