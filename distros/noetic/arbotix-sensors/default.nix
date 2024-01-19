
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, catkin }:
buildRosPackage {
  pname = "ros-noetic-arbotix-sensors";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/noetic/arbotix_sensors/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "061fc41c63c7798da8e2bcd35c913ef2f8da1e8f3c0a115ff7e877c595ebff7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ arbotix-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends the arbotix_node package with a number of more sophisticated ROS wrappers for common devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
