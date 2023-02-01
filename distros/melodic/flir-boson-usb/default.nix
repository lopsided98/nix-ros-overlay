
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-flir-boson-usb";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "astuff";
        repo = "flir_boson_usb-release";
        rev = "release/melodic/flir_boson_usb/1.2.1-1";
        sha256 = "sha256-2LR9jENM+HA7ryCFBuEAzj/K65UKDxGOiW9zHTzsL/E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple USB camera driver for the FLIR BOSON using OpenCV'';
    license = with lib.licenses; [ mit ];
  };
}
