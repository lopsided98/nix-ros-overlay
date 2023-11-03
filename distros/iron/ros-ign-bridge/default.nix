
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-iron-ros-ign-bridge";
  version = "0.247.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_bridge/0.247.0-1.tar.gz";
    name = "0.247.0-1.tar.gz";
    sha256 = "20cbbb9032e82694cb8a8cd91d3d2ae9fc65e160cdf1b231a62efbcefcb5ed61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_bridge.'';
    license = with lib.licenses; [ asl20 ];
  };
}
