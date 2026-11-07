
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-robosense-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-decoders";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_decoders/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "bde29f13df3eaa483abb058c433a4ad6334a85f8b9bdee0027ea79a0b71e8baf";
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
