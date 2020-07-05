
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-control, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.18-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.18-1.tar.gz";
    name = "0.5.18-1.tar.gz";
    sha256 = "124123ce495b128812d3720dfafa31cb2752ac7ae110fa5b16c8f885c9322c09";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-control prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
