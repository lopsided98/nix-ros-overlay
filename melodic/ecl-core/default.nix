
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-concepts, ecl-statistics, ecl-geometry, ecl-type-traits, ecl-eigen, ecl-utilities, ecl-sigslots, ecl-command-line, catkin, ecl-containers, ecl-math, ecl-devices, ecl-converters, ecl-time, ecl-core-apps, ecl-mpl }:
buildRosPackage {
  pname = "ros-melodic-ecl-core";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_core/0.62.2-0.tar.gz;
    sha256 = "faf777d4df832763a55bb0e32b19e5bc391f094d21aaec4acce62c11ed1695d5";
  };

  propagatedBuildInputs = [ ecl-streams ecl-threads ecl-exceptions ecl-linear-algebra ecl-ipc ecl-formatters ecl-concepts ecl-statistics ecl-geometry ecl-type-traits ecl-eigen ecl-utilities ecl-sigslots ecl-command-line ecl-containers ecl-math ecl-devices ecl-converters ecl-time ecl-core-apps ecl-mpl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to 
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
