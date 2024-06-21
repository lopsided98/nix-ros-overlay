
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-jazzy-qpoases-vendor";
  version = "3.2.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/jazzy/qpoases_vendor/3.2.3-5.tar.gz";
    name = "3.2.3-5.tar.gz";
    sha256 = "e5db194b7080f731355791540fbf2bb57fcca7e16af6cd3ecb827f4607c0d315";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Wrapper around qpOASES to make it available to the ROS ecosystem.";
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
