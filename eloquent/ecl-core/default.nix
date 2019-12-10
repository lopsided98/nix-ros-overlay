
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-command-line, ecl-concepts, ecl-containers, ecl-converters, ecl-core-apps, ecl-devices, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-sigslots, ecl-statistics, ecl-streams, ecl-threads, ecl-time, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-eloquent-ecl-core";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_core/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "a6d97aa41444cbe7b6ed00746aa0cb14f52f0af17112134f0dcc4929bf09c363";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-command-line ecl-concepts ecl-containers ecl-converters ecl-core-apps ecl-devices ecl-eigen ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-linear-algebra ecl-math ecl-mpl ecl-sigslots ecl-statistics ecl-streams ecl-threads ecl-time ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''A set of tools and interfaces extending the capabilities of c++ to
    provide a lightweight, consistent interface with a focus for control
    programming.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
