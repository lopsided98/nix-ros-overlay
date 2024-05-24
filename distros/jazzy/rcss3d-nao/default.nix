
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-lola-command-msgs, nao-lola-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, sensor-msgs, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rcss3d-nao";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/jazzy/rcss3d_nao/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "aed825a7bf615211a85c26e3e150244779a30b83b9d1122906679556f0d0ba68";
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
