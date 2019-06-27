
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, mbf-abstract-core, nav-core, catkin, std-msgs, mbf-utility, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mbf-costmap-core";
  version = "0.2.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/mbf_costmap_core/0.2.4-1.tar.gz;
    sha256 = "8c96407540fa851b03dd011dc97169788ae14cd78c16f7846da7616b1e4bc376";
  };

  buildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d mbf-abstract-core nav-core mbf-utility std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
