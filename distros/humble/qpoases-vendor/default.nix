
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-humble-qpoases-vendor";
  version = "3.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/humble/qpoases_vendor/3.2.3-3.tar.gz";
    name = "3.2.3-3.tar.gz";
    sha256 = "4b431fdc51538c236519d8f89d69309b260ed8f94c129eb6e829cbda4db0f92e";
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
