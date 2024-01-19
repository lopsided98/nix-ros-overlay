
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcl-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-humble-sync-parameter-server";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_parameter_server-release/archive/release/humble/sync_parameter_server/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "caa3b6c9f8ee5abf85193bc4ac361feaa363b18abc6c392a6a56063d817ad5c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcl-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO: Package description'';
    license = with lib.licenses; [ asl20 ];
  };
}
