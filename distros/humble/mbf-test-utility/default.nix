
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mbf-msgs, nav-msgs, rclcpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mbf-test-utility";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_test_utility/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "59f56f8908ea413bca3466af14c5b4aa7b84b95e927785fe661994e90f06dde4";
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
