
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rexrov2-description, rexrov2-control }:
buildRosPackage {
  pname = "ros-lunar-rexrov2-gazebo";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/lunar/rexrov2_gazebo/0.1.3-0.tar.gz;
    sha256 = "b8950a5cde6f15970ae13087298407d983b671df61c566024a0835dc00f271a7";
  };

  propagatedBuildInputs = [ rexrov2-description rexrov2-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the RexROV 2 vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
