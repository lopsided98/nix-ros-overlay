
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, orocos-kdl, rclcpp, robot-state-publisher, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-naoqi-driver";
  version = "2.0.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-naoqi";
        repo = "naoqi_driver2-release";
        rev = "release/foxy/naoqi_driver/2.0.0-0";
        sha256 = "sha256-1c4WSc7FAAmwhf5InFODoUhkp2v9KlF5W+qEMexjzgc=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake diagnostic-msgs diagnostic-updater geometry-msgs sensor-msgs tf2-geometry-msgs tf2-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost cv-bridge image-transport kdl-parser naoqi-bridge-msgs naoqi-libqi naoqi-libqicore orocos-kdl rclcpp robot-state-publisher tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS2. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
