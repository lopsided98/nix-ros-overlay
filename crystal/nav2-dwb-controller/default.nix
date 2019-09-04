
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, costmap-queue, launch, dwb-critics, dwb-plugins, nav-2d-utils, dwb-msgs, dwb-controller, ament-lint-auto, dwb-core, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-dwb-controller";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_dwb_controller/0.1.7-0.tar.gz;
    sha256 = "2386ff364ba12b1c7075840d7e70f764f54f2bf2d2c93103fe57ae9703feba7e";
  };

  buildInputs = [ costmap-queue dwb-critics dwb-plugins nav-2d-utils dwb-msgs dwb-controller dwb-core nav-2d-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ costmap-queue dwb-critics dwb-plugins nav-2d-utils dwb-msgs dwb-controller dwb-core nav-2d-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
