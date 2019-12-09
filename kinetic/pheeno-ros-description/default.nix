
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-pheeno-ros-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/acslaboratory/pheeno_ros_description-release/archive/release/kinetic/pheeno_ros_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "8ad08ec8d76d95de8fb8b29e19b741120860517559c7cdc9394f318b2583757b";
  };

  buildType = "catkin";
  buildInputs = [ xacro urdf ];
  propagatedBuildInputs = [ xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pheeno_ros_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
