
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-bringup, create-description, create-driver, create-msgs }:
buildRosPackage {
  pname = "ros-melodic-create-robot";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/melodic/create_robot/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "4d4ed2fec5a022b44973e3cabb7a03e13866db1c878062e74e4584e558c40f05";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ create-bringup create-description create-driver create-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for iRobot's Create 1 and 2, based on the libcreate C++ library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
