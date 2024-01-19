
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-control, pilz-status-indicator-rqt, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-noetic-pilz-robots";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/pilz_robots/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "fcc2acb4d679e4c28ca857adbbe15548f9430af9f16fa98e9c258d902eed0d80";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pilz-control pilz-status-indicator-rqt prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
