
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robots";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_robots/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "767c2bd4c2bcb9dea355b775e95c4a277e24067d950b74ad2c94ddc0781a8845";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
