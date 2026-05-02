
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-rolling-qpoases-vendor";
  version = "3.2.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/rolling/qpoases_vendor/3.2.3-5.tar.gz";
    name = "3.2.3-5.tar.gz";
    sha256 = "6bb6ce5631cd24a7d33e844414d845e48abfb953409ae46a4dcd25b3ec63448c";
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
