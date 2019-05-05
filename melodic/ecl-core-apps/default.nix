
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-time-lite, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-type-traits, ecl-sigslots, ecl-command-line, catkin, ecl-containers, ecl-devices, ecl-config, ecl-converters }:
buildRosPackage {
  pname = "ros-melodic-ecl-core-apps";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_core_apps/0.62.2-0.tar.gz;
    sha256 = "30a847ca6b096e1baf1be88d85936ab7f5fdabc5ce5e705b90ddd9972f84ccde";
  };

  buildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-containers ecl-license ecl-build ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  propagatedBuildInputs = [ ecl-converters ecl-formatters ecl-sigslots ecl-streams ecl-time-lite ecl-command-line ecl-geometry ecl-threads ecl-exceptions ecl-containers ecl-license ecl-build ecl-errors ecl-type-traits ecl-devices ecl-linear-algebra ecl-config ecl-ipc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This includes a suite of programs demo'ing various aspects of the
     ecl_core. It also includes various benchmarking and utility programs for
     use primarily with embedded systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
