
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "fd8d17ad824e19b2083796865709e35690dc719474405adb51fdba7510a7f838";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 message definitions for fixed-size Eigen-compatible vectors and matrices.";
    license = with lib.licenses; [ asl20 ];
  };
}
