
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-lyrical-rmw-connextdds";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/lyrical/rmw_connextdds/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "ccddaf4486179d439d7d3ba6e74441f737cbf9cbff783a4c1510b3b024564f62";
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
