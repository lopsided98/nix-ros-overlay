
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, nav-msgs, pluginlib, proxsuite, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-core";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_core/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c955ebd1a27387a0e88ee9fe1a3c4a97eab78cf34e7f87a8ac4fda4b4424e3c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs pluginlib proxsuite rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ProxMPC core: a nonlinear Model Predictive Control solved by a
  Sequential Quadratic Programming scheme that recursively calls the ProxQP
  solver, with Eigen for linear algebra. Library only; no ROS node.";
    license = with lib.licenses; [ asl20 ];
  };
}
