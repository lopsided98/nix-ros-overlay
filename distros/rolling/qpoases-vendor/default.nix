
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-rolling-qpoases-vendor";
  version = "3.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/rolling/qpoases_vendor/3.2.3-2.tar.gz";
    name = "3.2.3-2.tar.gz";
    sha256 = "35e308c6014bc2ddd5017a4f279b15d4a16343791fa1f93babbc9909e36091a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ subversion ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Wrapper around qpOASES to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
