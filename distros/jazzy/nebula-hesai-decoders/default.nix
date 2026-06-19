
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-hesai-common, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai-decoders";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai_decoders/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "224f3ce1d3e8f80690feba7d9e889c043e74c37f0257efb08ffd9124a13de128";
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
