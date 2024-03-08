
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds";
  version = "0.20.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds/0.20.0-2.tar.gz";
    name = "0.20.0-2.tar.gz";
    sha256 = "9067d7d7358ec696d7fc17cca2c2c7df80b7cd2a424c4e384fdd8efa96b584f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''A ROS 2 RMW implementation built with RTI Connext DDS Professional.'';
    license = with lib.licenses; [ asl20 ];
  };
}
