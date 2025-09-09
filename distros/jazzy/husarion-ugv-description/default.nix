
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husarion-components-description, joint-state-publisher, joint-state-publisher-gui, launch, launch-ros, nav2-common, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-husarion-ugv-description";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_ugv_ros-release/archive/release/jazzy/husarion_ugv_description/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "e2aa1a50fc5fc0819a1e9fede4d9c14f546ce8abc1449e4302ba4457c92e355b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husarion-components-description joint-state-publisher joint-state-publisher-gui launch launch-ros nav2-common robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The package contains URDF and mesh files for Husarion UGV";
    license = with lib.licenses; [ asl20 ];
  };
}
