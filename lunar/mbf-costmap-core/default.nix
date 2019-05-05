
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, mbf-abstract-core, nav-core, catkin, std-msgs, mbf-utility, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mbf-costmap-core";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/mbf_costmap_core/0.2.3-0.tar.gz;
    sha256 = "5c34aa9c06c639e8b4cdce8e7b4468d64cb4ded5e5760b614c3e6990606cd49b";
  };

  buildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
