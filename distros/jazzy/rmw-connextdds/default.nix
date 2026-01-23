
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-jazzy-rmw-connextdds";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/jazzy/rmw_connextdds/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "d6fb1621f3f6517bb54b646a291a628e60501484ea5b8405ae83b7bbb39b3121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 RMW implementation built with RTI Connext DDS Professional.";
    license = with lib.licenses; [ asl20 ];
  };
}
