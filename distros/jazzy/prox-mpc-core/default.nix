
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, nav-msgs, pluginlib, proxsuite, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-core";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_core/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6b2f0b9811d445b4712496462e5182948d744da3f9e6f2f3b097706708f1a394";
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
