
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-sand-island";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/melodic/sand_island/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "fa4a4a3f74588458997cdc7eefa1be98c9dbc08d98f53ab426b40cea4530fa90";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sand_island package'';
    license = with lib.licenses; [ asl20 ];
  };
}
