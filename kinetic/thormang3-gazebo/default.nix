
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-msgs, catkin, roscpp, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-gazebo";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Common-release/archive/release/kinetic/thormang3_gazebo/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "f6609bba80a8ce2581b5ea6460bdc0955c9a0bd4f0d0785367072d0212fd1a7e";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs gazebo-ros controller-manager roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides basic message pub and launch file to use Thormang3 on Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
