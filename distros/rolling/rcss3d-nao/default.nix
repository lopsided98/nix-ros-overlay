
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-lola-command-msgs, nao-lola-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-nao";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/rolling/rcss3d_nao/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "cfce50b7f6e9c99999abede82576f4279bdf48206017628dc2d6da40aaa799f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nao-lola-command-msgs nao-lola-sensor-msgs rclcpp-components rcss3d-agent rcss3d-agent-msgs-to-soccer-interfaces soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An interface to SimSpark that uses interfaces used by a Nao robot";
    license = with lib.licenses; [ asl20 ];
  };
}
