
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs-adapter";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs_adapter/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "007317a9056a49e3c3c5fe5eff2b541c93546c831244290b800cf50dd18434a1";
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
