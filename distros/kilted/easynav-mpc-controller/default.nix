
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, nlopt, pluginlib, rclcpp-lifecycle, std-srvs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-mpc-controller";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_mpc_controller/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "701cb9fd94443181ebbc8895ae4641e5b7cf54242a146df4db893ee5ef0c6509";
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
