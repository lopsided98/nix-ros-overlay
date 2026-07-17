
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-agilus-support, kuka-cybertech-support, kuka-fortec-support, kuka-gazebo, kuka-iontec-support, kuka-kl-support, kuka-kr-moveit-config, kuka-lbr-iisy-moveit-config, kuka-lbr-iisy-support, kuka-lbr-iiwa-moveit-config, kuka-lbr-iiwa-support, kuka-mock-hardware-interface, kuka-quantec-support, kuka-resources }:
buildRosPackage {
  pname = "ros-humble-kuka-robot-descriptions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_robot_descriptions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f5f83b46c79795dc6ba5a3984be9c39fac3661f8ce97f418a2cf59be3f769191";
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
