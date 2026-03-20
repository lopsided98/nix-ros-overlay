
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, geometry-msgs, nav-msgs, pluginlib, rclcpp-lifecycle, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-simple-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_simple_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "f41b014c7c7e671152d866534317fce9f1f8483fcd7a11a7eb83109df2935e17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core geometry-msgs nav-msgs pluginlib tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
