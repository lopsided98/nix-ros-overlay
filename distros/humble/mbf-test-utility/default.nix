
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mbf-msgs, nav-msgs, rclcpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mbf-test-utility";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_test_utility/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "4bc953adab7532459ef83d0bb4f98e766e2395d0c5967d647befccde60d6fe74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs mbf-msgs nav-msgs rclcpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains tools that help with testing move base flex modules. This package should
    only be used as a test dependency. If some tool shall be used in production, move it into
    mbf_utility for example.";
    license = with lib.licenses; [ bsd3 ];
  };
}
