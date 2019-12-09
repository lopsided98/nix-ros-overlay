
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-containers, ecl-ipc, ecl-config, ament-cmake-ros, ecl-type-traits, ecl-threads, ecl-linear-algebra, ecl-converters, ecl-formatters, ecl-sigslots, ecl-command-line, ecl-exceptions, ecl-build, ecl-devices, ecl-streams, ecl-geometry, ecl-errors, ecl-time-lite }:
buildRosPackage {
  pname = "ros-dashing-ecl-core-apps";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_core_apps/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "b34dd8e4e8a1708eccbc8fb9ca4f53760943ff7e5a6ddca0089db2caaeee6f3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-streams ecl-formatters ecl-geometry ecl-sigslots ecl-license ecl-type-traits ecl-errors ecl-containers ecl-command-line ecl-exceptions ecl-build ecl-config ecl-converters ecl-ipc ecl-threads ecl-time-lite ecl-devices ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-linear-algebra ecl-streams ecl-geometry ecl-formatters ecl-sigslots ecl-license ecl-type-traits ecl-errors ecl-containers ecl-command-line ecl-exceptions ecl-build ecl-time-lite ecl-ipc ecl-threads ecl-config ecl-devices ecl-converters ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
