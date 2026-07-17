
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-agilus-support, kuka-cybertech-support, kuka-fortec-support, kuka-gazebo, kuka-iontec-support, kuka-kl-support, kuka-kr-moveit-config, kuka-lbr-iisy-moveit-config, kuka-lbr-iisy-support, kuka-lbr-iiwa-moveit-config, kuka-lbr-iiwa-support, kuka-mock-hardware-interface, kuka-quantec-support, kuka-resources }:
buildRosPackage {
  pname = "ros-jazzy-kuka-robot-descriptions";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_robot_descriptions/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2b61f4a9c593e80af9ee5fce73fffa33899627670a73ad54a1796047977e1eb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kuka-agilus-support kuka-cybertech-support kuka-fortec-support kuka-gazebo kuka-iontec-support kuka-kl-support kuka-kr-moveit-config kuka-lbr-iisy-moveit-config kuka-lbr-iisy-support kuka-lbr-iiwa-moveit-config kuka-lbr-iiwa-support kuka-mock-hardware-interface kuka-quantec-support kuka-resources ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot descriptions and moveit configurations for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
