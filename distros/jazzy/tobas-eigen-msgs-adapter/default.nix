
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "718813bd0fa6f33d726aebce05c9d7ff520ed6bc7d0c8d5a3a5c63ceb2a7f12f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ eigen rosidl-default-runtime tobas-eigen-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Eigen-compatible Tobas messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
