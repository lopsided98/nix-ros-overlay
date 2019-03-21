
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, mbf-abstract-core, nav-core, catkin, mbf-utility, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-core";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_core/0.2.3-0.tar.gz;
    sha256 = "99c4b3f406d65d71f039477cd8f153e4514c064ef30fcba5e10e582cc3b15d66";
  };

  propagatedBuildInputs = [ mbf-utility costmap-2d mbf-abstract-core std-msgs nav-core tf geometry-msgs ];
  nativeBuildInputs = [ mbf-utility costmap-2d mbf-abstract-core catkin std-msgs nav-core tf geometry-msgs ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    #license = lib.licenses.BSD;
  };
}
