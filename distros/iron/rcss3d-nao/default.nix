
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nao-command-msgs, nao-sensor-msgs, rclcpp-components, rcss3d-agent, rcss3d-agent-msgs-to-soccer-interfaces, soccer-vision-3d-msgs }:
buildRosPackage {
  pname = "ros-iron-rcss3d-nao";
  version = "0.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcss3d_nao-release/archive/release/iron/rcss3d_nao/0.1.1-3.tar.gz";
    name = "0.1.1-3.tar.gz";
    sha256 = "aa29c0c0507de5244d75449c20069bf0937517c33a7bead1f24d7d1224ec4579";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nao-command-msgs nao-sensor-msgs rclcpp-components rcss3d-agent rcss3d-agent-msgs-to-soccer-interfaces soccer-vision-3d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An interface to SimSpark that uses interfaces used by a Nao robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
