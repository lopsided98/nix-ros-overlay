
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-magnetometer";
  version = "1.0.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "phidgets_drivers-release";
        rev = "release/noetic/phidgets_magnetometer/1.0.6-1";
        sha256 = "sha256-dbipRGZxFnfbGsz7IVr8V2DCIzGDMiU5Xt14vxGOzLw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Magnetometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
