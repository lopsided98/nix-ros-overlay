
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-abstract-core, mbf-utility, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-mbf-simple-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/mbf_simple_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9f48a56b232d3627a67ac23245b9371f1a274bcc1c9388fa8ea8e92581e07186";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-utility rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides common interfaces for navigation specific robot actions. It contains the SimplePlanner, SimpleController and SimpleRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_simple_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and there is no binding to a map representation.";
    license = with lib.licenses; [ bsd3 ];
  };
}
