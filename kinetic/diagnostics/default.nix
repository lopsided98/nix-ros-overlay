
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, diagnostic-analysis, catkin, diagnostic-common-diagnostics, diagnostic-updater, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostics/1.9.3-0.tar.gz;
    sha256 = "710c53752fea42773fe5d0e01b98183dd78fa103f78c4937d2e9c64a3ebe41a0";
  };

  propagatedBuildInputs = [ self-test diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
