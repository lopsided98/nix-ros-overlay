
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-assembler, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-melodic-laser-pipeline";
  version = "1.6.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_pipeline-release/archive/release/melodic/laser_pipeline/1.6.3-0.tar.gz";
    name = "1.6.3-0.tar.gz";
    sha256 = "5d831b4e5ff12088b034f71202b7202c5d4fff9717d4a58acd5843e279f242d7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-assembler laser-filters laser-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package of libraries for processing laser data, including converting laser data
      into 3D representations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
