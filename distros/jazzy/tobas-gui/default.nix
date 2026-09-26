
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-actuator-test, tobas-bootmedia-config, tobas-colcon-cpp, tobas-control-system, tobas-crypt, tobas-cyclonedds-config, tobas-flight-log-gui, tobas-gamepad, tobas-gazebo, tobas-gcs, tobas-git, tobas-gui-common, tobas-parameter-tuning, tobas-qt-tools, tobas-qwt-wrapper, tobas-rviz-plugin, tobas-rviz-wrapper, tobas-sensor-calibration, tobas-setup-assistant, tobas-simulation-gui, tobas-ssh, tobas-tile-proxy, tobas-uadf, tobas-udev, tobas-urdf-builder, tobas-urdf-builder-plugin, tobas-visualization-msgs, tobas-wpa-supplicant }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gui";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gui/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "1dcf69681221cacb9072a76ee7c9b6d9262f82a8f7ca0b58849d3d5d97e56a84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-actuator-test tobas-bootmedia-config tobas-colcon-cpp tobas-control-system tobas-crypt tobas-cyclonedds-config tobas-flight-log-gui tobas-gamepad tobas-gazebo tobas-gcs tobas-git tobas-gui-common tobas-parameter-tuning tobas-qt-tools tobas-qwt-wrapper tobas-rviz-plugin tobas-rviz-wrapper tobas-sensor-calibration tobas-setup-assistant tobas-simulation-gui tobas-ssh tobas-tile-proxy tobas-uadf tobas-udev tobas-urdf-builder tobas-urdf-builder-plugin tobas-visualization-msgs tobas-wpa-supplicant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas desktop, ground-control, visualization, and simulation tools.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
