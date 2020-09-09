
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, gazebo-msgs, geometry-msgs, joint-state-controller, joint-trajectory-controller, position-controllers, roscpp, sensor-msgs, std-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-omnibase-gazebo";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/omnibase_gazebo/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a67abd1f3c7f07cde4bdc72a83222d122a97b4cd3cfcc7286f870f3d40d6bbd2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers gazebo-msgs geometry-msgs joint-state-controller joint-trajectory-controller position-controllers roscpp sensor-msgs std-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The omnibase_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
