
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-yosemite-valley";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/kinetic/yosemite_valley/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "c9c635d4ddabd090cd2a7e2c91d7ec4e2af53e67920cad13199ba2683dacc05d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The yosemite_valley package'';
    license = with lib.licenses; [ asl20 ];
  };
}
