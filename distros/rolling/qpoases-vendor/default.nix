
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-rolling-qpoases-vendor";
  version = "3.2.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/rolling/qpoases_vendor/3.2.3-4.tar.gz";
    name = "3.2.3-4.tar.gz";
    sha256 = "638e57290edbc0dfcd8e08ad155acc9c36a5182ce519711f3a5bd70ae9bf1b2c";
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
