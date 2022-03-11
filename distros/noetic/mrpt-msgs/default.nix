
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/noetic/mrpt_msgs/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "4e19f99e5c7510dc49b081269f50518b26904f96300ed11cda4af31daa56aad2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
