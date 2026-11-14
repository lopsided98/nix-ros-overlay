
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-hesai-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai-decoders";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai_decoders/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "cf0672adcc8c0edd3ab8951eba13d876f6c8d3ee66f6cac70603174d4344c577";
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
