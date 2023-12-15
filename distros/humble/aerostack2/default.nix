
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-alphanumeric-viewer, as2-behavior, as2-behavior-tree, as2-behaviors-motion, as2-behaviors-perception, as2-behaviors-platform, as2-behaviors-trajectory-generation, as2-cli, as2-core, as2-gazebo-classic-assets, as2-ign-gazebo-assets, as2-keyboard-teleoperation, as2-motion-controller, as2-motion-reference-handlers, as2-msgs, as2-platform-crazyflie, as2-platform-ign-gazebo, as2-platform-tello, as2-python-api, as2-realsense-interface, as2-state-estimator, as2-usb-camera-interface }:
buildRosPackage {
  pname = "ros-humble-aerostack2";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/aerostack2/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "ac40ad62ac1094e0512ebe2b7a3fdf225110f7aa79673d9660c30363f4e435af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ as2-alphanumeric-viewer as2-behavior as2-behavior-tree as2-behaviors-motion as2-behaviors-perception as2-behaviors-platform as2-behaviors-trajectory-generation as2-cli as2-core as2-gazebo-classic-assets as2-ign-gazebo-assets as2-keyboard-teleoperation as2-motion-controller as2-motion-reference-handlers as2-msgs as2-platform-crazyflie as2-platform-ign-gazebo as2-platform-tello as2-python-api as2-realsense-interface as2-state-estimator as2-usb-camera-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 is a ROS2-based framework for the development of autonomous systems for aerial robotics.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
