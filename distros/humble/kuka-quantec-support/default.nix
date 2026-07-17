
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-gazebo, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-quantec-support";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_quantec_support/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "12f040653a63312c3100a9b3042efdf30de8bb834cba36b83abe6066fc46f3c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rviz2 ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-gazebo kuka-resources launch-ros robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot models for the KUKA quantec family.";
    license = with lib.licenses; [ asl20 ];
  };
}
