
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, geometry-msgs, nav-msgs, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-easynav-simple-planner";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_simple_planner/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "b9421399437135698b410df42a9cda6500a62b620e2de871332fe1d464b1beb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-simple-common geometry-msgs nav-msgs pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
