
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-laser-sensors";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_laser_sensors/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "e9c954d74f88c6f3ef6eda46c72ff41c3b9ccb99c79a776183101a4c22b29e61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
