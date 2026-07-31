
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-easynav-costmap-common";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_costmap_common/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "d6129eed045340d06aa8e8e27650281e1fcb482ca3b4ec68948d1ea6edd2e9b8";
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
