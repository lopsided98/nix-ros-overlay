
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p-teleop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p_teleop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dbe8922f0a41a0692d8154bd9b28085a54c8eda70346983404b083c5f8be480e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P teleoperation'';
    license = with lib.licenses; [ asl20 ];
  };
}
