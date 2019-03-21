
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-runtime, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-teleop";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_teleop/2.2.0-0.tar.gz;
    sha256 = "6828013c5b117f7b94adb25c04337e2e469a7ad99a5a8b1df558976c32ba29f6";
  };

  propagatedBuildInputs = [ message-runtime std-msgs sensor-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin std-msgs sensor-msgs tf geometry-msgs ];

  meta = {
    description = ''A teleoperation node for the p2os_driver package.'';
    #license = lib.licenses.BSD;
  };
}
