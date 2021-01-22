
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-sand-island";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/kinetic/sand_island/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "30ba818b9e9e0cf1f491b7180154cb3e52777e936f9ac935861b712202a61940";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sand_island package'';
    license = with lib.licenses; [ asl20 ];
  };
}
