
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-gazebo, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-lbr-iisy-support";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_lbr_iisy_support/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6b7d26242db69f80e49bf5e4a6e68696bd9e62fdcb103753af9de046ece8333d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rviz2 ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-gazebo kuka-resources launch-ros robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing models of KUKA LBR iisy family";
    license = with lib.licenses; [ asl20 ];
  };
}
