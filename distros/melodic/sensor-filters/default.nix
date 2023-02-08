
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-sensor-filters";
  version = "1.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ctu-vras";
        repo = "sensor_filters-release";
        rev = "release/melodic/sensor_filters/1.0.3-1";
        sha256 = "sha256-7zG/cp/Skv0mGkPQfp/ZwSEfOe7pWa8mfIKmXBdmBTs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple sensor filter chain nodes and nodelets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
