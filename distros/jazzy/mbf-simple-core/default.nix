
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, mbf-abstract-core, mbf-utility, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-mbf-simple-core";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/mbf_simple_core/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "da35484d45be4a69c93086080f61290eebf67d1a3c2a1593961c56e80014358b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-utility std-msgs tf2 ];

  meta = {
    description = "This package provides common interfaces for navigation specific robot actions. It contains the SimplePlanner, SimpleController and SimpleRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_simple_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and there is no binding to a map representation.";
    license = with lib.licenses; [ bsd3 ];
  };
}
