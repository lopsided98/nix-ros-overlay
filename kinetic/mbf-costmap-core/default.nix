
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, mbf-abstract-core, nav-core, catkin, std-msgs, mbf-utility, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-costmap-core";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_costmap_core/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "868c2f13857df6fae747b29108f7103e8da308a084ffa70bef4fc2aff1feda64";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
