
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-abstract-core";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_abstract_core/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "31af1e9d675525265e6e3ca83e48c80e6cf11bcb8333f0e065b147f65ff2e494";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the AbstractPlanner, AbstractController and AbstractRecovery plugin interfaces. This interfaces have to be implemented by the plugins to make the plugin available for Move Base Flex. The abstract classes provides a meaningful interface enabling the planners, controllers and recovery behaviors to return information, e.g. why something went wrong. Derivided interfaces can, for example, provide methods to initialize the planner, controller or recovery with map representations like costmap_2d, grid_map or other representations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
