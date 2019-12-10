
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, dwb-core, launch, launch-testing, nav-2d-msgs, nav-2d-utils, nav2-common, nav2-msgs, nav2-robot, nav2-tasks, nav2-util, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-dwb-controller";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_controller/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "450f6b6b59a11f491adbd99d2ceaf1e150a11f337e4d64b84738e3159dd974d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ boost dwb-core nav-2d-msgs nav-2d-utils nav2-msgs nav2-robot nav2-tasks nav2-util rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
