
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-lola-command-msgs, nao-lola-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-rolling-rcss3d-nao";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/rolling/rcss3d_nao/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "29559c9f3de65b4b81e7b42e2695fa38d60a8f37f550512ebdda7b9e3673e0fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nao-lola-command-msgs nao-lola-sensor-msgs rclcpp-components rcss3d-agent rcss3d-agent-msgs-to-soccer-interfaces soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An interface to SimSpark that uses interfaces used by a Nao robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
