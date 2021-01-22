
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, catkin }:
buildRosPackage {
  pname = "ros-kinetic-arbotix-sensors";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix_sensors/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "d5b5cc089219598d73e6bfc23ace2265721e80b88f65a76ab6c8d90126f5a3d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ arbotix-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends the arbotix_node package with a number of more sophisticated ROS wrappers for common devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
