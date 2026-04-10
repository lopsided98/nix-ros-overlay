
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-hesai-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai-decoders";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai_decoders/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "89709e4ffa849f710c3aebee4d03323553d27f9efa211af3e1bd87d11ef27d8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost nebula-core-common nebula-core-decoders nebula-hesai-common rclcpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Hesai Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
