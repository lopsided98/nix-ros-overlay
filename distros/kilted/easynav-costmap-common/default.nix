
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-common";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_common/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a6682dbe43395a4ffa7f1daa7e86f392524b67a0fbbca54300aa8d96ed7c0a43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common geometry-msgs nav-msgs rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
