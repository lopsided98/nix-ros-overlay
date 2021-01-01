
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, rcutils, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-dashing-controller-parameter-server";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/dashing/controller_parameter_server/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "48351508ab523f5ea2240cb8fb57773d7c8919fd5ee32efddbe481663ff66547";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rcpputils rcutils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''parameter server for loading specific controller configurations'';
    license = with lib.licenses; [ asl20 ];
  };
}
