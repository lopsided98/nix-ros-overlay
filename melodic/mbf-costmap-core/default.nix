
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, tf, catkin, mbf-utility, mbf-abstract-core, costmap-2d, nav-core }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-core";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_core/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "6b073c66ee63f2e425425402058e2e5cf7d0a22617b28adb0017e616a22d3790";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs tf mbf-utility mbf-abstract-core costmap-2d nav-core ];
  propagatedBuildInputs = [ geometry-msgs std-msgs tf mbf-utility mbf-abstract-core costmap-2d nav-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
