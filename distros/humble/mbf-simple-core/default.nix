
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, mbf-abstract-core, mbf-utility, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-humble-mbf-simple-core";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_simple_core/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "a63026ff575c718fe60a3f92f84948a8b4cb20c72a05d3cf1b8fbb88935ca4f7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-utility std-msgs tf2 ];

  meta = {
    description = "This package provides common interfaces for navigation specific robot actions. It contains the SimplePlanner, SimpleController and SimpleRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_simple_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and there is no binding to a map representation.";
    license = with lib.licenses; [ bsd3 ];
  };
}
