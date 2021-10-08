
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, lm_sensors, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cpu-temperature-diagnostics";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/yotabits/cpu_temperature_diagnostics-release/archive/release/melodic/cpu_temperature_diagnostics/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "8d3218594e5c1ffcff59e590550b892ad1192987698156b748d5b344876daebc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater lm_sensors roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collect and diagnose cpu temperature informations'';
    license = with lib.licenses; [ "(c) Ascent Robotics Inc. All rights reserved." ];
  };
}
