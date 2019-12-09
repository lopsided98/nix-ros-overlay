
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-containers, ecl-ipc, ecl-config, ecl-type-traits, ecl-threads, ecl-linear-algebra, ecl-converters, ecl-formatters, ecl-sigslots, catkin, ecl-command-line, ecl-exceptions, ecl-build, ecl-devices, ecl-streams, ecl-geometry, ecl-errors, ecl-time-lite }:
buildRosPackage {
  pname = "ros-kinetic-ecl-core-apps";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core_apps/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "e524feefba31851bbdc98e1388312597f102ccba343f4bf218cd2176adebb496";
  };

  buildType = "catkin";
  buildInputs = [ ecl-streams ecl-formatters ecl-geometry ecl-sigslots ecl-license ecl-type-traits ecl-errors ecl-containers ecl-command-line ecl-exceptions ecl-build ecl-config ecl-converters ecl-ipc ecl-threads ecl-time-lite ecl-devices ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-linear-algebra ecl-streams ecl-geometry ecl-formatters ecl-sigslots ecl-license ecl-type-traits ecl-errors ecl-containers ecl-command-line ecl-exceptions ecl-build ecl-time-lite ecl-ipc ecl-threads ecl-config ecl-devices ecl-converters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
