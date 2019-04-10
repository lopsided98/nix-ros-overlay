
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-assembler, laser-geometry, laser-filters, catkin }:
buildRosPackage {
  pname = "ros-lunar-laser-pipeline";
  version = "1.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/laser_pipeline-release/archive/release/lunar/laser_pipeline/1.6.2-0.tar.gz;
    sha256 = "f8e5d71fd3177aed50f97954534bfabec587eeb39bf13e8acc5cf01827c6c222";
  };

  propagatedBuildInputs = [ laser-assembler laser-filters laser-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package of libraries for processing laser data, including converting laser data
      into 3D representations.'';
    #license = lib.licenses.BSD;
  };
}
