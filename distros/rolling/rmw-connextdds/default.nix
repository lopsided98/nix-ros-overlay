
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-connextdds";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rmw_connextdds/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "b0d9599b6c0bf51e806624c3ce32db8cf6af25b9ac4d8bb61c11f6190643fe7c";
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
