
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-config, ecl-containers, ecl-converters, ecl-devices, ecl-errors, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-license, ecl-linear-algebra, ecl-sigslots, ecl-streams, ecl-threads, ecl-time-lite, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kinetic-ecl-core-apps";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core_apps/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "e524feefba31851bbdc98e1388312597f102ccba343f4bf218cd2176adebb496";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-config ecl-containers ecl-converters ecl-devices ecl-errors ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-license ecl-linear-algebra ecl-sigslots ecl-streams ecl-threads ecl-time-lite ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
