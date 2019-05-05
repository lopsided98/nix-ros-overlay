
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, diagnostic-analysis, catkin, diagnostic-common-diagnostics, diagnostic-updater, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-lunar-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostics/1.9.3-0.tar.gz;
    sha256 = "6ecb37840ba9124e9f5ef5fc5a352fc7664de7a10b9bcbb364f5f7ae0e2988c9";
  };

  propagatedBuildInputs = [ self-test diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
