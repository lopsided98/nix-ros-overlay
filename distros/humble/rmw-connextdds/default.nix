
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, rmw-connextdds-common }:
buildRosPackage {
  pname = "ros-humble-rmw-connextdds";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/humble/rmw_connextdds/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "94cb333746fe8612d47286c99eb5b1c4b8052fcc01b6b42e43948862b48b7f22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rmw-connextdds-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''A ROS2 RMW implementation built with RTI Connext DDS Professional.'';
    license = with lib.licenses; [ asl20 ];
  };
}
