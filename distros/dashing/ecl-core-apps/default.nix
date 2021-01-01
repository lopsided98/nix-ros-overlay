
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-containers, ecl-converters, ecl-devices, ecl-errors, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-license, ecl-linear-algebra, ecl-sigslots, ecl-streams, ecl-threads, ecl-time-lite, ecl-type-traits }:
buildRosPackage {
  pname = "ros-dashing-ecl-core-apps";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_core_apps/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "b34dd8e4e8a1708eccbc8fb9ca4f53760943ff7e5a6ddca0089db2caaeee6f3d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-config ecl-containers ecl-converters ecl-devices ecl-errors ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-license ecl-linear-algebra ecl-sigslots ecl-streams ecl-threads ecl-time-lite ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
