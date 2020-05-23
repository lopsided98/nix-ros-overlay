
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-analysis, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-noetic-diagnostics";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostics/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "0ec167c2b04698a4f4e80dd8ca1329fe974380275d06f3d023ef84b1477d5934";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
