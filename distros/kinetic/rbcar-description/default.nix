
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, robotnik-sensors, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-description";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_common-release/archive/release/kinetic/rbcar_description/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "734d9b1f982d3bbfe7d0d05f7e1457dfd1c5ea9cc92d8bc7e10c6ef2aa79d549";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime robotnik-sensors std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
