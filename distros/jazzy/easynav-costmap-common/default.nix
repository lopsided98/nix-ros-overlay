
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-costmap-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_costmap_common/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "edb07d059e92d2287ed23491a719771350dbdb80213097442659e98a63feb725";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common geometry-msgs nav-msgs rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
