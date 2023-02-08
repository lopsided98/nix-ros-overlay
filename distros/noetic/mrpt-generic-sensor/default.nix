
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-sensorlib, mrpt2, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-generic-sensor";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mrpt-ros-pkg-release";
        repo = "mrpt_sensors-release";
        rev = "release/noetic/mrpt_generic_sensor/0.0.2-1";
        sha256 = "sha256-TQeEDnO4mSjkLg/n3JFX25GpI5sRkTCfejPnCvONfVA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-sensorlib mrpt2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for interfacing any sensor supported by mrpt-hwdrivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
