
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-containers, ecl-ipc, ecl-type-traits, ecl-utilities, ecl-core-apps, ecl-threads, ecl-math, ecl-converters, ecl-linear-algebra, ecl-time, ecl-formatters, ecl-sigslots, catkin, ecl-command-line, ecl-exceptions, ecl-concepts, ecl-mpl, ecl-eigen, ecl-devices, ecl-streams, ecl-geometry, ecl-statistics }:
buildRosPackage {
  pname = "ros-kinetic-ecl-core";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "161968895114c781c0e1ef25b0d227790a31a1d5290d27d008d9b515e2be88c3";
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
