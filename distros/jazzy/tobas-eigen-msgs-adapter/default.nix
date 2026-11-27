
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs-adapter";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs_adapter/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "09a67995421c4efa197563ebb81e6c64fc6c70496186c7f25d9eb9627fb013ef";
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
