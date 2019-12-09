
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-containers, ecl-ipc, ecl-config, ecl-type-traits, ecl-threads, ecl-linear-algebra, ecl-converters, ecl-formatters, ecl-sigslots, catkin, ecl-command-line, ecl-exceptions, ecl-build, ecl-devices, ecl-streams, ecl-geometry, ecl-errors, ecl-time-lite }:
buildRosPackage {
  pname = "ros-melodic-ecl-core-apps";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_core_apps/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "30a847ca6b096e1baf1be88d85936ab7f5fdabc5ce5e705b90ddd9972f84ccde";
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
