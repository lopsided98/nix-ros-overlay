
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-msgs";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_msgs/0.6.0-2/bota_driver-release-release-noetic-rokubimini_msgs-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_msgs-0.6.0-2.tar.gz";
    sha256 = "1bc8689f8c7c8d3019a7440eafd4a855e90cb8d3332aa920c1be4238f34ca0d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
