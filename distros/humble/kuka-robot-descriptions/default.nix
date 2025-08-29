
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-agilus-support, kuka-cybertech-support, kuka-fortec-support, kuka-iontec-support, kuka-kr-moveit-config, kuka-lbr-iisy-moveit-config, kuka-lbr-iisy-support, kuka-lbr-iiwa-moveit-config, kuka-lbr-iiwa-support, kuka-mock-hardware-interface, kuka-quantec-support, kuka-resources }:
buildRosPackage {
  pname = "ros-humble-kuka-robot-descriptions";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_robot_descriptions/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "481eda488f6e11b6f73cc4f08b6a27a28f461e16b7b6005a84f183e33cc16642";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kuka-agilus-support kuka-cybertech-support kuka-fortec-support kuka-iontec-support kuka-kr-moveit-config kuka-lbr-iisy-moveit-config kuka-lbr-iisy-support kuka-lbr-iiwa-moveit-config kuka-lbr-iiwa-support kuka-mock-hardware-interface kuka-quantec-support kuka-resources ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot descriptions and moveit configurations for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
