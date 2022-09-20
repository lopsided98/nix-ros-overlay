
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-containers, ecl-converters, ecl-devices, ecl-errors, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-license, ecl-linear-algebra, ecl-sigslots, ecl-streams, ecl-threads, ecl-time-lite, ecl-type-traits }:
buildRosPackage {
  pname = "ros-galactic-ecl-core-apps";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/ecl_core_apps/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d812bf4b14d2fbb57efa494b97c8db962b76b4564e450dc54df7fb85860988d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-config ecl-containers ecl-converters ecl-devices ecl-errors ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-license ecl-linear-algebra ecl-sigslots ecl-streams ecl-threads ecl-time-lite ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
