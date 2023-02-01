
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, lm_sensors, roscpp }:
buildRosPackage {
  pname = "ros-noetic-libsensors-monitor";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "linux_peripheral_interfaces-release";
        rev = "release/noetic/libsensors_monitor/0.2.2-1";
        sha256 = "sha256-FMqPGAlzgDVBRnHXPQHfu4gdHvdJHTwg4UoZueMDSxY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater lm_sensors roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node for using libsensors to provide diagnostics information about the sensors on a computer system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
