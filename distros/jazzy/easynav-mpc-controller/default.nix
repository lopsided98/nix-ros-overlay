
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, nlopt, pluginlib, rclcpp-lifecycle, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-mpc-controller";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_mpc_controller/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "10932e3cc00fd948c95dee16e338a4ccd5e7a414d343391318b376bc1e245b21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlopt ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-system geometry-msgs nav-msgs pluginlib tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPC Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
