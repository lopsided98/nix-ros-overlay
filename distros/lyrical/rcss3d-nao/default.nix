
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-lola-command-msgs, nao-lola-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, sensor-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rcss3d-nao";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/lyrical/rcss3d_nao/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "1a1271587c6d06215da2ae81c2b6937d9678face377920881a1527c123907d45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nao-lola-command-msgs nao-lola-sensor-msgs rclcpp-components rcss3d-agent rcss3d-agent-msgs-to-soccer-interfaces sensor-msgs soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An interface to SimSpark that uses interfaces used by a Nao robot";
    license = with lib.licenses; [ asl20 ];
  };
}
