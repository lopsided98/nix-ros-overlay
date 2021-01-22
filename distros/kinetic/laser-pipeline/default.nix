
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-assembler, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-kinetic-laser-pipeline";
  version = "1.6.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_pipeline-release/archive/release/kinetic/laser_pipeline/1.6.2-0.tar.gz";
    name = "1.6.2-0.tar.gz";
    sha256 = "decd2bc097e44f066dbe20da9a6228683481a146f95258c9f4d91e6a15c2fe66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-assembler laser-filters laser-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package of libraries for processing laser data, including converting laser data
      into 3D representations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
