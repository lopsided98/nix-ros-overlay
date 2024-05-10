
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-agilus-support, kuka-cybertech-support, kuka-fortec-support, kuka-iontec-support, kuka-kr-moveit-config, kuka-lbr-iisy-moveit-config, kuka-lbr-iisy-support, kuka-lbr-iiwa-moveit-config, kuka-lbr-iiwa-support, kuka-mock-hardware-interface, kuka-quantec-support, kuka-resources }:
buildRosPackage {
  pname = "ros-humble-kuka-robot-descriptions";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_robot_descriptions/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "ecb6c11b8af2787a7428d77adecf503fe58d82df1b4010e4a0a3de527b94637f";
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
