
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-omnibase-gazebo";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_gazebo/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3d24516f5a8b6940a1579a5435139f6812813d5550e8b665663d5118ad5c2eed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
