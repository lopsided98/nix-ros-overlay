
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-ros-ign-bridge";
  version = "0.244.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_bridge/0.244.6-1.tar.gz";
    name = "0.244.6-1.tar.gz";
    sha256 = "e63e49567b3ac2ac17e7a965ce7e9635e2d05870450db360c9a47c8db605ce12";
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
