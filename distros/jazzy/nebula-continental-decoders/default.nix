
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, continental-msgs, diagnostic-msgs, nebula-continental-common, nebula-core-common, nebula-msgs, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-decoders";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_decoders/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "303a202c7983bea1591c01659e8257e7a6e4d58be9434c38d7779bea25e2bdc3";
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
