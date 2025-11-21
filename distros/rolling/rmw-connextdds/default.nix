
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "a2ccaaf34b73ec3aadc8c3a80b781451f20dd46619300c9f5d06e2c6899cf88b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 RMW implementation built with RTI Connext DDS Professional.";
    license = with lib.licenses; [ asl20 ];
  };
}
