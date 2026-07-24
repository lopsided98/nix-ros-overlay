
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, mbf-abstract-core, mbf-utility, rclcpp }:
buildRosPackage {
  pname = "ros-humble-mbf-simple-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_simple_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "58e0b8badb1d79a40caa7752d262c8588c5a90ddaf9caf055cfaf50de5f1f548";
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
