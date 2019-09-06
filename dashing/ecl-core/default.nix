
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-streams, ecl-threads, ecl-exceptions, ecl-linear-algebra, ecl-ipc, ecl-formatters, ecl-concepts, ecl-statistics, ecl-geometry, ecl-type-traits, ecl-eigen, ecl-utilities, ecl-sigslots, ecl-command-line, ecl-containers, ecl-math, ecl-devices, ament-cmake-ros, ecl-converters, ecl-time, ecl-core-apps, ecl-mpl }:
buildRosPackage rec {
  pname = "ros-dashing-ecl-core";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/dashing/ecl_core/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "5d8cde94549781c1ad857c7a5f8a0d2ee2d7cd21de781941058218cbd886b261";
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
