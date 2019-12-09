
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-containers, ecl-ipc, ament-cmake-ros, ecl-type-traits, ecl-utilities, ecl-core-apps, ecl-threads, ecl-math, ecl-linear-algebra, ecl-converters, ecl-time, ecl-formatters, ecl-sigslots, ecl-command-line, ecl-exceptions, ecl-concepts, ecl-mpl, ecl-eigen, ecl-devices, ecl-streams, ecl-geometry, ecl-statistics }:
buildRosPackage {
  pname = "ros-dashing-ecl-core";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_core/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5d8cde94549781c1ad857c7a5f8a0d2ee2d7cd21de781941058218cbd886b261";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-containers ecl-ipc ecl-type-traits ecl-utilities ecl-core-apps ecl-threads ecl-math ecl-converters ecl-linear-algebra ecl-time ecl-formatters ecl-sigslots ecl-command-line ecl-exceptions ecl-concepts ecl-mpl ecl-eigen ecl-devices ecl-streams ecl-geometry ecl-statistics ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
