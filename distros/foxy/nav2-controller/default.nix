
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-core, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-controller";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_controller/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a3aa130cb2f73be25f601a7c1127c82a705c8c3250c29670fc60e8c635055e46";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-2d-msgs nav-2d-utils nav2-core nav2-msgs nav2-util pluginlib rclcpp rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller action interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
