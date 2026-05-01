
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-lyrical-rmw-connextdds";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/lyrical/rmw_connextdds/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "69ceb8f3d2572f86c8229f50830ee8a19db567e6905241f1fc4cf07e208a7cb8";
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
