
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-control, pilz-status-indicator-rqt, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.23-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.23-1.tar.gz";
    name = "0.5.23-1.tar.gz";
    sha256 = "ab98a25dedb5a104fecaaf4ed3631f09764186a5e1c5da9e87f32b8a7fb73e5a";
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
