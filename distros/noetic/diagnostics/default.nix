
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-analysis, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-noetic-diagnostics";
  version = "1.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostics/1.10.4-1.tar.gz";
    name = "1.10.4-1.tar.gz";
    sha256 = "f500a1c6a6a3b672bb2f74aad99df99eb0080a3a69ef534a2994f539e7873570";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
