
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-command-msgs, nao-sensor-msgs, rclcpp, soccer-vision-msgs }:
buildRosPackage {
  pname = "ros-galactic-rcss3d-agent";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/naosoccer_sim-release/archive/release/galactic/rcss3d_agent/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "d1621aaeab74babcfaee0701f9231488d0927c9bd70f86af03d675a51b25d65e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nao-command-msgs nao-sensor-msgs rclcpp soccer-vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
