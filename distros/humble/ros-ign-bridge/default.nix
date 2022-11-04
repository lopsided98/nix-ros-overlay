
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-ros-ign-bridge";
  version = "0.244.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_bridge/0.244.9-1.tar.gz";
    name = "0.244.9-1.tar.gz";
    sha256 = "80dcd175ae473385264f59182272e585e3bef0c8169a95fc18799065ddf6030c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_bridge.'';
    license = with lib.licenses; [ asl20 ];
  };
}
