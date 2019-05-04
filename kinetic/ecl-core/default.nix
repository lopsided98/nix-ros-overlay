
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-concepts, ecl-statistics, ecl-geometry, ecl-type-traits, ecl-eigen, ecl-utilities, ecl-sigslots, ecl-command-line, catkin, ecl-containers, ecl-math, ecl-devices, ecl-converters, ecl-time, ecl-core-apps, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-core";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core/0.61.17-0.tar.gz;
    sha256 = "161968895114c781c0e1ef25b0d227790a31a1d5290d27d008d9b515e2be88c3";
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
