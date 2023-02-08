
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, eml, log4cxx, message-generation, message-runtime, pluginlib, pr2-hardware-interface, pr2-msgs, realtime-tools, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-ethercat-hardware";
  version = "1.8.19-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_ethercat_drivers-release";
        rev = "release/melodic/ethercat_hardware/1.8.19-1";
        sha256 = "sha256-8rvRR8AmqC5Yxtx+PGh4ghcRvTG7ehlHiLdFSjZ6NkQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eml log4cxx message-runtime pluginlib pr2-hardware-interface pr2-msgs realtime-tools roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for creating a hardware interface to the robot using the EtherCAT motor controller/driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
