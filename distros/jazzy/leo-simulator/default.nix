
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, leo-gz-bringup, leo-gz-plugins, leo-gz-worlds }:
buildRosPackage {
  pname = "ros-jazzy-leo-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/jazzy/leo_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "95c8dbd1ea68d0c3575d13b165d45a62b201bfef22310655a9a9f3ba11436a5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ leo-gz-bringup leo-gz-plugins leo-gz-worlds ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Leo Rover Gazebo simulation in ROS2";
    license = with lib.licenses; [ mit ];
  };
}
