
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, subversion }:
buildRosPackage {
  pname = "ros-foxy-qpoases-vendor";
  version = "3.2.3-r2";

  src = fetchurl {
    url = "https://github.com/Autoware-AI/qpoases_vendor-release/archive/release/foxy/qpoases_vendor/3.2.3-2.tar.gz";
    name = "3.2.3-2.tar.gz";
    sha256 = "5dd8deecfed630f13b4b913df8b17fad61ebb1f6976dde219b1f02df66050ba7";
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
