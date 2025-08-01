
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-containers, ecl-converters, ecl-devices, ecl-errors, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-license, ecl-linear-algebra, ecl-sigslots, ecl-streams, ecl-threads, ecl-time-lite, ecl-type-traits }:
buildRosPackage {
  pname = "ros-kilted-ecl-core-apps";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_core_apps/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "c1f30cc56d0184d81ac260f59e16fc12c0d1308fd6da1e38afe7c9808223b7df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-build ecl-command-line ecl-config ecl-containers ecl-converters ecl-devices ecl-errors ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-license ecl-linear-algebra ecl-sigslots ecl-streams ecl-threads ecl-time-lite ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
