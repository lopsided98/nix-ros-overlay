
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-playground-kobuki-description, gz-sim-vendor, launch, launch-ros, launch-yaml, robot-state-publisher, ros-gz-bridge, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-kobuki-worlds";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_kobuki_worlds/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "fd9d67a9a3f2f5cbb7e39a1fa26c71644c85093ea884e10b4bd7756660bd5512";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-playground-kobuki-description gz-sim-vendor launch launch-ros launch-yaml robot-state-publisher ros-gz-bridge ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo (Harmonic or newer) simulation of a Kobuki for the EasyNav playgrounds: the AWS small house world, its map, and the launchers that spawn one or several Kobukis with the ROS-Gazebo bridge.";
    license = with lib.licenses; [ asl20 mit0 ];
  };
}
