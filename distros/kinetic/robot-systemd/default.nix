
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-robot-systemd";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/LucidOne-Release/robot_systemd/archive/release/kinetic/robot_systemd/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "28a46bcfb82539bff8f713e14b163fa77a26c83c2774ef74e93372cdc451a3ec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Systemd Robot Initialization'';
    license = with lib.licenses; [ mit "Apache-1.0" ];
  };
}
