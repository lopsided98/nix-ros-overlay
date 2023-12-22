
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-ros-ign-bridge";
  version = "0.244.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_bridge/0.244.12-1.tar.gz";
    name = "0.244.12-1.tar.gz";
    sha256 = "1fb50c77612d74c916e08bbe6c9c03439fa02cc25c42ff5decee2780a29997ba";
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
