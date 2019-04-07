
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-time-lite, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ecl-sigslots, ecl-command-line, catkin, ecl-containers, ecl-devices, ecl-config, ecl-converters }:
buildRosPackage {
  pname = "ros-kinetic-ecl-core-apps";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core_apps/0.61.17-0.tar.gz;
    sha256 = "e524feefba31851bbdc98e1388312597f102ccba343f4bf218cd2176adebb496";
  };

  buildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-containers ecl-license ecl-build ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  propagatedBuildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-containers ecl-license ecl-build ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    #license = lib.licenses.BSD;
  };
}
