
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-rolling-qpoases-vendor";
  version = "3.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qpoases_vendor-release/archive/release/rolling/qpoases_vendor/3.2.3-3.tar.gz";
    name = "3.2.3-3.tar.gz";
    sha256 = "a969129f4fce6ffd251ad9a89a0fc6c852b9212beae55c848e088728eb188ca9";
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
