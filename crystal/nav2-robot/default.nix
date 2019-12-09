
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, launch, launch-testing, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, rclcpp, nav-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-robot";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_robot/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "924fde792c011a96dea86bc3db5454ca5290d392b758f93aa0a11621f7f092fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs urdf nav2-common rclcpp nav-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rclcpp nav-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
