
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "98374ca387a1ff12634ddfe29649ae3e67eb4f8ce40934dc6e38c0ae7c17f39d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "A ROS 2 RMW implementation built with RTI Connext DDS Professional.";
    license = with lib.licenses; [ asl20 ];
  };
}
