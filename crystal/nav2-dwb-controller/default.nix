
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, costmap-queue, dwb-controller, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, launch, launch-testing, nav-2d-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-crystal-nav2-dwb-controller";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_dwb_controller/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "2386ff364ba12b1c7075840d7e70f764f54f2bf2d2c93103fe57ae9703feba7e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ costmap-queue dwb-controller dwb-core dwb-critics dwb-msgs dwb-plugins nav-2d-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
