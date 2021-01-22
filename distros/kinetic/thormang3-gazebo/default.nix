
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-gazebo";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Common-release/archive/release/kinetic/thormang3_gazebo/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "f6609bba80a8ce2581b5ea6460bdc0955c9a0bd4f0d0785367072d0212fd1a7e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides basic message pub and launch file to use Thormang3 on Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
