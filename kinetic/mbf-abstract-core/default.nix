
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-abstract-core";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_abstract_core/0.2.3-0.tar.gz;
    sha256 = "c5eede5d7da972f3ec73646642d567f0c55da424dfe71da4e4cdeb153dfce037";
  };

  buildInputs = [ std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the AbstractPlanner, AbstractController and AbstractRecovery plugin interfaces. This interfaces have to be implemented by the plugins to make the plugin available for Move Base Flex. The abstract classes provides a meaningful interface enabling the planners, controllers and recovery behaviors to return information, e.g. why something went wrong. Derivided interfaces can, for example, provide methods to initialize the planner, controller or recovery with map representations like costmap_2d, grid_map or other representations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
