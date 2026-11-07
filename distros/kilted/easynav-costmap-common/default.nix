
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, geometry-msgs, nav-msgs, rclcpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-common";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_common/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "0fd34ec3bb40801fba5b45c1e8931452f69bd972787aba8a538bd31c94645543";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common geometry-msgs nav-msgs rclcpp tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
