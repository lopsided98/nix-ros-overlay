
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-robosense-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-decoders";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_decoders/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8f5a0d9ff017c63adb03cf6f0bbd3aca392b12178f24c9701cd3293075bc8892";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-decoders nebula-robosense-common rclcpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Robosense Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
