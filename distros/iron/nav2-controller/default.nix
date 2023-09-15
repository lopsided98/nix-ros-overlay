
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-controller";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_controller/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "0cd84c748b1af52cde7ba3be17fca3107ab3a54cb562d0c09be2794f06a40f73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles nav-2d-msgs nav-2d-utils nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller action interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
