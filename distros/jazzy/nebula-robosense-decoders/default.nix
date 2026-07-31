
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-robosense-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense-decoders";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense_decoders/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8b71f8b051eb6f3e63873dc3064fd7ab0f39906b7ed398c50b0af3cd77621abd";
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
