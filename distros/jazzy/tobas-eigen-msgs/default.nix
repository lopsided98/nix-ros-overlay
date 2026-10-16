
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-msgs";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_msgs/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "80611d316388023f054eb321dc0c8facab9fb4d844cecbf127800afe8f42db6a";
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
