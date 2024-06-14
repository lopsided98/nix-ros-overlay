
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-jazzy-rmw-connextdds";
  version = "0.22.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/jazzy/rmw_connextdds/0.22.0-2.tar.gz";
    name = "0.22.0-2.tar.gz";
    sha256 = "69a1a42df2705f561d35c43aca18dbc7a838b2974b6163d80ba05a0d759649fa";
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
