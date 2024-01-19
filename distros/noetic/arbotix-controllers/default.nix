
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, catkin, tf, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-arbotix-controllers";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/noetic/arbotix_controllers/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "ce77c261a63367fadaf8e22ee1d5106c290bf60644fdf50788804092fc259b24";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ arbotix-python tf trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends the arbotix_python package with a number of more sophisticated ROS wrappers for common devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
