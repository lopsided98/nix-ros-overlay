
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-kilted-rmw-connextdds";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/kilted/rmw_connextdds/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "904e4423a2aa84fcd43fa7d023766c3948c545b1e2f0cb3c402d7d2d0f7f7802";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 RMW implementation built with RTI Connext DDS Professional.";
    license = with lib.licenses; [ asl20 ];
  };
}
