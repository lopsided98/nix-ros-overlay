
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-playground-kobuki-description, gz-sim-vendor, launch, launch-ros, launch-yaml, robot-state-publisher, ros-gz-bridge, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-kobuki-worlds";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_kobuki_worlds/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "2d8a670f1741629d1619e3e6078ab61946be934aeb816641923b5b0450b1bda0";
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
