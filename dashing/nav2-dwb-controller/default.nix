
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-critics, dwb-controller, dwb-core, launch, launch-testing, nav-2d-msgs, costmap-queue, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-pytest, dwb-msgs, dwb-plugins, nav-2d-utils, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-nav2-dwb-controller";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_dwb_controller/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "0b65e837055a5bd978ff1b7b0657aa962e5aa5903d969099dec19d52261bd824";
  };

  buildType = "ament_cmake";
  buildInputs = [ dwb-msgs dwb-controller dwb-core costmap-queue nav-2d-msgs dwb-critics dwb-plugins nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ dwb-msgs dwb-controller dwb-core costmap-queue nav-2d-msgs dwb-critics dwb-plugins nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
