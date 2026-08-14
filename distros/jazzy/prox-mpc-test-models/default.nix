
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, pluginlib, prox-mpc-core, proxsuite, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-prox-mpc-test-models";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/simone-contorno/prox_mpc-release/archive/release/jazzy/prox_mpc_test_models/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c5ef1847cd9d39924177cd1aef57861a6d36de2f0c261f23c54cf24a572e8328";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs pluginlib prox-mpc-core proxsuite rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test-fixture prox_mpc::Model plugins for the ProxMPC stack. These
  fault-injection models exercise controller fail-safe paths that the bundled
  models cannot reach (for example a non-finite command). Not for production
  use.";
    license = with lib.licenses; [ asl20 ];
  };
}
