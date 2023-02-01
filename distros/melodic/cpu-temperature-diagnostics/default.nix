
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, lm_sensors, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cpu-temperature-diagnostics";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yotabits";
        repo = "cpu_temperature_diagnostics-release";
        rev = "release/melodic/cpu_temperature_diagnostics/0.0.1-1";
        sha256 = "sha256-eDNECUYEyqoAmtQ7dqRgTQAV15XPfVgUmWg5tsfFRw4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater lm_sensors roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collect and diagnose cpu temperature informations'';
    license = with lib.licenses; [ "-c-Ascent-Robotics-Inc.-All-rights-reserved." ];
  };
}
