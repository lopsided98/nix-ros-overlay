
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-hesai-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai-decoders";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai_decoders/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8196a18d3c9de24fdf44cfb0a20ef175ea74d3d0fad396976ef7cf5644152e1b";
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
