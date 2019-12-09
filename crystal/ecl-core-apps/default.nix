
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-containers, ecl-ipc, ecl-config, ament-cmake-ros, ecl-type-traits, ecl-threads, ecl-linear-algebra, ecl-converters, ecl-formatters, ecl-sigslots, ecl-command-line, ecl-exceptions, ecl-build, ecl-devices, ecl-streams, ecl-geometry, ecl-errors, ecl-time-lite }:
buildRosPackage {
  pname = "ros-crystal-ecl-core-apps";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_core_apps/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "4ecaab4200b12304d57fd077b3027cd57ed8ea021cfd7ab1c8b4299f2ee41134";
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
