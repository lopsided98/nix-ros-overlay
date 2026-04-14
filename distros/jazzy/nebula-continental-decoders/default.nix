
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, continental-msgs, diagnostic-msgs, nebula-continental-common, nebula-core-common, nebula-msgs, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-decoders";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_decoders/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "21fdae5e6fe58a92b571b6172ce0cd6e9ed85f64f508aa37792364b8b3bee5c5";
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
