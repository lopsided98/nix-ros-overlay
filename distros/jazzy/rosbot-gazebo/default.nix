
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, gz-ros2-control, husarion-gz-worlds, launch, launch-ros, python3Packages, ros-gz-bridge, ros-gz-sim, rosbot-controller, rosbot-description, rosbot-joy, rosbot-localization, rosbot-utils, rviz2, tf-namespace-bridge }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_gazebo/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "3c28f57e4db0696befcf9ca7881bb83ca048ca97331cc30685ebc845b4496bce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest python3Packages.pyyaml rosbot-description ];
  propagatedBuildInputs = [ gz-ros2-control husarion-gz-worlds launch launch-ros ros-gz-bridge ros-gz-sim rosbot-controller rosbot-joy rosbot-localization rosbot-utils rviz2 tf-namespace-bridge ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
