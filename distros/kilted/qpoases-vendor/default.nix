
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-kilted-qpoases-vendor";
  version = "3.2.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/kilted/qpoases_vendor/3.2.3-5.tar.gz";
    name = "3.2.3-5.tar.gz";
    sha256 = "c6f258601fe1745a21e87af5cd3cec920bd9d2ad7b5595bfe608636d6b6308df";
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
