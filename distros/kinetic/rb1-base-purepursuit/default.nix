
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-purepursuit";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_purepursuit/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "2761f291d10a3f4b441997677d2950fe42085e736784d9498d6662a9407a945b";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_purepursuit package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
