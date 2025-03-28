
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-alphanumeric-viewer, as2-behavior, as2-behavior-tree, as2-behaviors-motion, as2-behaviors-path-planning, as2-behaviors-perception, as2-behaviors-platform, as2-behaviors-trajectory-generation, as2-cli, as2-core, as2-external-object-to-tf, as2-gazebo-assets, as2-geozones, as2-keyboard-teleoperation, as2-map-server, as2-motion-controller, as2-motion-reference-handlers, as2-msgs, as2-platform-gazebo, as2-platform-multirotor-simulator, as2-python-api, as2-realsense-interface, as2-rviz-plugins, as2-state-estimator, as2-usb-camera-interface, as2-visualization }:
buildRosPackage {
  pname = "ros-humble-aerostack2";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/aerostack2/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "b01736d9ceeb14dc6e22ac0743ec0ba28523671f807f659c32d9ab5a71207dd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ as2-alphanumeric-viewer as2-behavior as2-behavior-tree as2-behaviors-motion as2-behaviors-path-planning as2-behaviors-perception as2-behaviors-platform as2-behaviors-trajectory-generation as2-cli as2-core as2-external-object-to-tf as2-gazebo-assets as2-geozones as2-keyboard-teleoperation as2-map-server as2-motion-controller as2-motion-reference-handlers as2-msgs as2-platform-gazebo as2-platform-multirotor-simulator as2-python-api as2-realsense-interface as2-rviz-plugins as2-state-estimator as2-usb-camera-interface as2-visualization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aerostack2 is a ROS2-based framework for the development of autonomous systems for aerial robotics.";
    license = with lib.licenses; [ bsd3 ];
  };
}
