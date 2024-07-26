
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-gz-sim-demos }:
buildRosPackage {
  pname = "ros-iron-ros-ign-gazebo-demos";
  version = "0.254.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_gazebo_demos/0.254.2-1.tar.gz";
    name = "0.254.2-1.tar.gz";
    sha256 = "e6b05caba3f9588a86dbdd078af5b0f702d38534117b4e81ba0c6bd816a59620";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-gz-sim-demos ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim package to redirect to ros_gz_sim_demos.";
    license = with lib.licenses; [ asl20 ];
  };
}
