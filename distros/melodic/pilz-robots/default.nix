
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-control, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.15-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.15-1.tar.gz";
    name = "0.5.15-1.tar.gz";
    sha256 = "7932a7090c71333be17780fb6f270991cdc530e6933b900509bf4b78788af12f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-control prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
