
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husarion-components-description, joint-state-publisher, joint-state-publisher-gui, launch, launch-ros, nav2-common, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-husarion-ugv-description";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_ugv_ros-release/archive/release/humble/husarion_ugv_description/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "8adc49a73cef18ef4dbf2cc0219bd05475f69e6b82c8ce817310a5472bf10e8e";
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
