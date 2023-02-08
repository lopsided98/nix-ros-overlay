
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, odva-ethernetip, rosconsole-bridge, roscpp, roslaunch, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-omron-os32c-driver";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "omron-release";
        rev = "release/noetic/omron_os32c_driver/1.1.0-1";
        sha256 = "sha256-BV06b4o53dvlYyrb3NwHBN7Zpnd/7VxqJVtAUBUaMlA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater odva-ethernetip rosconsole-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface driver for Omron OS32C Lidar via Ethernet/IP (Industrial Protocol)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
