
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-analysis, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-noetic-diagnostics";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostics/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "72a92a5d1016fbbf70043615806e367f1e3e35add6c4561c9e10594370e19ae6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
