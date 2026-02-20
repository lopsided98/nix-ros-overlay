
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-humble-rmw-connextdds";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/humble/rmw_connextdds/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "59c4ae57283e07eb84a325137df88561cffe2e86291edd2e7dc25f652dc5c599";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS2 RMW implementation built with RTI Connext DDS Professional.";
    license = with lib.licenses; [ asl20 ];
  };
}
