
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-lyrical-qpoases-vendor";
  version = "3.2.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/lyrical/qpoases_vendor/3.2.3-6.tar.gz";
    name = "3.2.3-6.tar.gz";
    sha256 = "e56d56b93566012503d8d7f116e8d6df87cfa14a726b231970cdedc1efd60dcf";
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
