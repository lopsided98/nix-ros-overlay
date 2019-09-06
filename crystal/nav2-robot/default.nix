
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav2-common, nav-msgs, urdf, rclcpp, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-robot";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_robot/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "924fde792c011a96dea86bc3db5454ca5290d392b758f93aa0a11621f7f092fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common nav-msgs urdf rclcpp geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav-msgs urdf rclcpp geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
