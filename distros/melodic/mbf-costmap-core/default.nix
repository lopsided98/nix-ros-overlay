
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, mbf-abstract-core, mbf-utility, nav-core, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-core";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_core/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ab6a7064b0169cfe4c61611dc36bc0c7f887fe232819872ea3547c0746496d62";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d geometry-msgs mbf-abstract-core mbf-utility nav-core std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
