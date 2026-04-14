
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, continental-msgs, diagnostic-msgs, nebula-continental-common, nebula-core-common, nebula-msgs, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-decoders";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_decoders/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ee599bfdf05431f914c41a42fd53a2de0ff13171730ec78c37cad57e77bd7936";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost continental-msgs diagnostic-msgs nebula-continental-common nebula-core-common nebula-msgs rclcpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Continental Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
