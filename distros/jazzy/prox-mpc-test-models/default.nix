
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, pluginlib, prox-mpc-core, proxsuite, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-test-models";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_test_models/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "3d4435bee2a6466f31eeeb1bb392674c2b95d5f498e98d741a0de34e05dc29d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs pluginlib prox-mpc-core proxsuite rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test-fixture prox_mpc::Model plugins for the ProxMPC stack. These
  models exercise controller paths the bundled production models cannot reach
  (for example a non-finite command, or an asymmetric bound). Not for
  production use. Fixture class names are not a stable interface and may
  change without notice.";
    license = with lib.licenses; [ asl20 ];
  };
}
