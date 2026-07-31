
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-system, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-easynav-regulated-pp-controller";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_regulated_pp_controller/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "f916ba5fc10b290bfdc59494ffaceb6f092cf28ea5af8f79875ec51882fca64a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system geometry-msgs nav-msgs pluginlib rclcpp std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: port of the Nav2 Regulated Pure Pursuit Controller.";
    license = with lib.licenses; [ asl20 ];
  };
}
