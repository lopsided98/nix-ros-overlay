
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-iron-ros-ign-gazebo";
  version = "0.245.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_gazebo/0.245.0-1.tar.gz";
    name = "0.245.0-1.tar.gz";
    sha256 = "d4fb06d727a51ee2ced1753c49c08ba1671e3c8cd8f3612894d22e3abb9473cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_sim.'';
    license = with lib.licenses; [ asl20 ];
  };
}
