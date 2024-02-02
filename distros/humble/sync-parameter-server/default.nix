
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rcl-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-humble-sync-parameter-server";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_parameter_server-release/archive/release/humble/sync_parameter_server/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "7159f100940e94cd524ae8d82310f4494052893e402e9b88ae951314c5576d25";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
