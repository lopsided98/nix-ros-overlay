
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, catkin, tf, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-arbotix-controllers";
  version = "0.10.0";

  src = fetchurl {
    url = "https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/melodic/arbotix_controllers/0.10.0-0.tar.gz";
    name = "0.10.0-0.tar.gz";
    sha256 = "32d41d26b0bddb10e801e02195bd604400fddb7aef4bddde8c917a62cecc6028";
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
