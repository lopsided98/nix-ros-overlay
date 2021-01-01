
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-p2os-teleop";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_teleop/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "ab335eef79180097bb377478917ae2f091b29fdb0c07812e51462f283558849d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
