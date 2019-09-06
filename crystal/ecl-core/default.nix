
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-concepts, ecl-statistics, ecl-geometry, ecl-type-traits, ecl-eigen, ecl-utilities, ecl-sigslots, ecl-command-line, ecl-containers, ecl-math, ecl-devices, ament-cmake-ros, ecl-converters, ecl-time, ecl-core-apps, ecl-mpl }:
buildRosPackage {
  pname = "ros-crystal-ecl-core";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_core/1.0.1-0.tar.gz;
    sha256 = "00d05827ed189c57dba3950f6a68f25c3b5e3da5ff06e8390b0c117bac974a41";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-streams ecl-threads ecl-exceptions ecl-linear-algebra ecl-ipc ecl-formatters ecl-concepts ecl-statistics ecl-geometry ecl-type-traits ecl-eigen ecl-utilities ecl-sigslots ecl-command-line ecl-containers ecl-math ecl-devices ecl-converters ecl-time ecl-core-apps ecl-mpl ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
