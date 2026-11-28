
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, rmw-cyclonedds-cpp, tobas-actuator-test, tobas-connection-monitor, tobas-control-system, tobas-cyclonedds-config, tobas-flight-log-gui, tobas-gazebo-sim, tobas-parameter-tuning, tobas-property-server, tobas-sensor-calibration, tobas-simulation-gui, tobas-ssh-server, tobas-tile-proxy }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gcs";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gcs/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "490b6d23cf051c729381d49c32c38dc6d7c90fa5dc5ab3ff86e5d547829c1d3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros rmw-cyclonedds-cpp tobas-actuator-test tobas-connection-monitor tobas-control-system tobas-cyclonedds-config tobas-flight-log-gui tobas-gazebo-sim tobas-parameter-tuning tobas-property-server tobas-sensor-calibration tobas-simulation-gui tobas-ssh-server tobas-tile-proxy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt ground-control station for managing Tobas projects and flight operations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
