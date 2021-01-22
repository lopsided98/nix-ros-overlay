
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-simple-arm";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/danielsnider/simple_arm-release/archive/release/kinetic/simple_arm/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "292ef6205a024c748684021d6e2fed99520dc0e5b10f89170869da1beba418c2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple velocity controlled arm. Teleoperation software and firmware.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
