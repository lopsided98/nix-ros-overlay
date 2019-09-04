
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, costmap-queue, launch, dwb-critics, dwb-plugins, nav-2d-utils, dwb-msgs, dwb-controller, ament-lint-auto, dwb-core, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-dwb-controller";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_dwb_controller/0.2.3-1.tar.gz;
    sha256 = "3fd29b8df9206b8f93b2e5bb7a8f7247b6f145442ebe9dd00d9d22f06ac8e9a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ costmap-queue dwb-critics dwb-plugins nav-2d-utils dwb-msgs dwb-controller dwb-core nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ costmap-queue dwb-critics dwb-plugins nav-2d-utils dwb-msgs dwb-controller dwb-core nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
