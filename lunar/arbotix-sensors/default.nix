
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, catkin }:
buildRosPackage {
  pname = "ros-lunar-arbotix-sensors";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/lunar/arbotix_sensors/0.10.0-0.tar.gz;
    sha256 = "a19e05708397399f855ca7c9ec1e8cb2da4b642849ae7ef3c11262446b3af2c6";
  };

  propagatedBuildInputs = [ arbotix-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends the arbotix_node package with a number of more sophisticated ROS wrappers for common devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
