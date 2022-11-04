
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrp2-gazebo }:
buildRosPackage {
  pname = "ros-melodic-mrp2-simulator";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_simulator-release/archive/release/melodic/mrp2_simulator/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "74d4fe6ed97f54e4168fc135452ebe756bcdab2ac11cb89000d500a1e6e7cfeb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrp2-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation-related packages for MRP2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
