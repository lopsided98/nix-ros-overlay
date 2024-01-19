
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-command-line, ecl-config, ecl-containers, ecl-converters, ecl-devices, ecl-errors, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-license, ecl-linear-algebra, ecl-sigslots, ecl-streams, ecl-threads, ecl-time-lite, ecl-type-traits }:
buildRosPackage {
  pname = "ros-noetic-ecl-core-apps";
  version = "0.62.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/ecl_core_apps/0.62.3-1.tar.gz";
    name = "0.62.3-1.tar.gz";
    sha256 = "56f1d22a224461a12e76c84341d6c917f39705e4d15525f93ed9dfb250f0ebc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-config ecl-containers ecl-converters ecl-devices ecl-errors ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-license ecl-linear-algebra ecl-sigslots ecl-streams ecl-threads ecl-time-lite ecl-type-traits ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
