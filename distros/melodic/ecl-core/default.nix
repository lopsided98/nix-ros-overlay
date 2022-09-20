
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-command-line, ecl-concepts, ecl-containers, ecl-converters, ecl-core-apps, ecl-devices, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-sigslots, ecl-statistics, ecl-streams, ecl-threads, ecl-time, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-melodic-ecl-core";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_core/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "faf777d4df832763a55bb0e32b19e5bc391f094d21aaec4acce62c11ed1695d5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-command-line ecl-concepts ecl-containers ecl-converters ecl-core-apps ecl-devices ecl-eigen ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-linear-algebra ecl-math ecl-mpl ecl-sigslots ecl-statistics ecl-streams ecl-threads ecl-time ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to 
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
