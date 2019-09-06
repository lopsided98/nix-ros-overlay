
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-time-lite, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ecl-sigslots, ecl-command-line, ecl-containers, ecl-devices, ament-cmake-ros, ecl-config, ecl-converters }:
buildRosPackage {
  pname = "ros-crystal-ecl-core-apps";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_core_apps/1.0.1-0.tar.gz;
    sha256 = "4ecaab4200b12304d57fd077b3027cd57ed8ea021cfd7ab1c8b4299f2ee41134";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-containers ecl-license ecl-build ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  propagatedBuildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-build ecl-license ecl-containers ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
