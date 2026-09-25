
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-camera, tobas-command-msgs, tobas-command-msgs-adapter, tobas-common, tobas-components-rt, tobas-config-servers, tobas-connection-monitor, tobas-constants, tobas-controllers, tobas-cui, tobas-debug-msgs, tobas-debug-msgs-adapter, tobas-debug-tools, tobas-description, tobas-disturbance-observer, tobas-dparam, tobas-drone, tobas-dummy-pkg, tobas-eskf, tobas-failsafe, tobas-fake-publishers, tobas-hardware, tobas-joint-states-bridge, tobas-landing-detection, tobas-manipulation, tobas-mission, tobas-msgs, tobas-msgs-adapter, tobas-node, tobas-object-avoidance, tobas-pose-pid, tobas-property, tobas-rc-teleop, tobas-real, tobas-ros-interface, tobas-rosbag-recorder, tobas-rotor-anomaly-detection, tobas-rotor-controller, tobas-tools, tobas-topic-throttle, tobas-tree-server, tobas-version, tobas-vibration-filter, tobas-wind-model }:
buildRosPackage {
  pname = "ros-jazzy-tobas-core";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_core/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c1336f2d8bc2805fc160c8aa87f0433961c43bcf0ea9d7fa760dd363bd810e1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-camera tobas-command-msgs tobas-command-msgs-adapter tobas-common tobas-components-rt tobas-config-servers tobas-connection-monitor tobas-constants tobas-controllers tobas-cui tobas-debug-msgs tobas-debug-msgs-adapter tobas-debug-tools tobas-description tobas-disturbance-observer tobas-dparam tobas-drone tobas-dummy-pkg tobas-eskf tobas-failsafe tobas-fake-publishers tobas-hardware tobas-joint-states-bridge tobas-landing-detection tobas-manipulation tobas-mission tobas-msgs tobas-msgs-adapter tobas-node tobas-object-avoidance tobas-pose-pid tobas-property tobas-rc-teleop tobas-real tobas-ros-interface tobas-rosbag-recorder tobas-rotor-anomaly-detection tobas-rotor-controller tobas-tools tobas-topic-throttle tobas-tree-server tobas-version tobas-vibration-filter tobas-wind-model ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for the Tobas core flight-control stack.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
