
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-assembler, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-noetic-laser-pipeline";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/laser_pipeline-release/archive/release/noetic/laser_pipeline/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "82a30e8eb4352285020531334f0167e76b46d5d4ea47f89570029f7f56d5e9fd";
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
