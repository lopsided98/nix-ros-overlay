
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs-adapter";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs_adapter/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "40cd8e435897454555725065cf383c5a8df607aae869aa8675c56b6db1dcd9c9";
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
