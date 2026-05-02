
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-command-line, ecl-concepts, ecl-containers, ecl-converters, ecl-core-apps, ecl-devices, ecl-eigen, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-ipc, ecl-linear-algebra, ecl-math, ecl-mpl, ecl-sigslots, ecl-statistics, ecl-streams, ecl-threads, ecl-time, ecl-type-traits, ecl-utilities }:
buildRosPackage {
  pname = "ros-rolling-ecl-core";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_core/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "da9ef4fc9f8f7e6832577c60c97875f007ef28824084fada34d62c72187c770d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-command-line ecl-concepts ecl-containers ecl-converters ecl-core-apps ecl-devices ecl-eigen ecl-exceptions ecl-formatters ecl-geometry ecl-ipc ecl-linear-algebra ecl-math ecl-mpl ecl-sigslots ecl-statistics ecl-streams ecl-threads ecl-time ecl-type-traits ecl-utilities ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A set of tools and interfaces extending the capabilities of c++ to
    provide a lightweight, consistent interface with a focus for control
    programming.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
