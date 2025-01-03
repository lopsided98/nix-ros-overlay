
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-lola-command-msgs, nao-lola-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, sensor-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-nao";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/rolling/rcss3d_nao/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "a7646f7396de3a9782536542a1ace435871c65bb74afab79bc3b676c08f5a3b6";
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
