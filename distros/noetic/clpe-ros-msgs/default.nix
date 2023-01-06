
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-clpe-ros-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/canlab-co/clpe_ros_msgs-ros-release/archive/release/noetic/clpe_ros_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "e76ba2f0efdcbb49aaa82369fd564216d6410ce5c0477f71ba27a12fe7307e60";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Messages used by clpe_ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
