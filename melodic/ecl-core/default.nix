
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-containers, ecl-ipc, ecl-type-traits, ecl-utilities, ecl-core-apps, ecl-threads, ecl-math, ecl-converters, ecl-linear-algebra, ecl-time, ecl-formatters, ecl-sigslots, catkin, ecl-command-line, ecl-exceptions, ecl-concepts, ecl-mpl, ecl-eigen, ecl-devices, ecl-streams, ecl-geometry, ecl-statistics }:
buildRosPackage {
  pname = "ros-melodic-ecl-core";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_core/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "faf777d4df832763a55bb0e32b19e5bc391f094d21aaec4acce62c11ed1695d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-containers ecl-ipc ecl-type-traits ecl-utilities ecl-core-apps ecl-threads ecl-math ecl-linear-algebra ecl-converters ecl-time ecl-formatters ecl-sigslots ecl-command-line ecl-exceptions ecl-concepts ecl-mpl ecl-eigen ecl-devices ecl-streams ecl-geometry ecl-statistics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to 
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
