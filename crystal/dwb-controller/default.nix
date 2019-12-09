
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav2-robot, boost, ament-cmake-pytest, dwb-core, launch, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, nav-2d-msgs, nav2-tasks, nav2-util, rclcpp, nav2-msgs, nav-2d-utils, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dwb-controller";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_controller/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "450f6b6b59a11f491adbd99d2ceaf1e150a11f337e4d64b84738e3159dd974d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-robot boost dwb-core std-msgs nav2-common nav-2d-msgs nav2-tasks nav2-util rclcpp nav2-msgs nav-2d-utils ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav2-robot boost dwb-core std-msgs nav-2d-msgs nav2-tasks nav2-util rclcpp nav2-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
