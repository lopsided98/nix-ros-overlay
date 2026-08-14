
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, nav-msgs, nav2-core, nav2-costmap-2d, nav2-util, pluginlib, prox-mpc-core, prox-mpc-msgs, prox-mpc-test-models, proxsuite, rclcpp, rclcpp-lifecycle, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8fe64a890e1154ec0d517f786e0fec92664d50b302ddd586056075602b8334c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common prox-mpc-test-models ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nav2-core nav2-costmap-2d nav2-util pluginlib prox-mpc-core prox-mpc-msgs proxsuite rclcpp rclcpp-lifecycle tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 nav2_core::Controller plugin built on the ProxMPC core: it
  builds the reference from the global plan, reduces the local costmap (and,
  optionally, tracked dynamic obstacles) to the solver's constraints, solves one
  SQP cycle per control step, and decelerates safely on a failed solve. Verified
  in simulation under a full Nav2 stack.";
    license = with lib.licenses; [ asl20 ];
  };
}
