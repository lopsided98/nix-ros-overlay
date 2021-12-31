
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-galactic-pilz-industrial-motion-planner-testutils";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/pilz_industrial_motion_planner_testutils/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "a994ae51f4cd474c74e12841205cfd6b6ef5d0584539ee1ff9072bd3c605c63f";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common tf2-eigen ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
