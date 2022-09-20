
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-console, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-foxy-kobuki-core";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_core-release/archive/release/foxy/kobuki_core/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "5b135e67311625ae48d960697920be00dbfbe43c634fc091ee7561e51cfdeb1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-config ecl-console ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-threads ecl-time ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Pure C++ driver library for Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
