
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-dual-2dnav, tiago-dual-laser-sensors, tiago-dual-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-navigation";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_navigation-release/archive/release/humble/tiago_dual_navigation/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "86b77c91ace7d732f1c17a71a29cc7dddc9b89ec1ae3283749c45d6577148d6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-dual-2dnav tiago-dual-laser-sensors tiago-dual-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
