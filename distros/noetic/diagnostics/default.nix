
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-analysis, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-noetic-diagnostics";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostics/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "37fb58f5918e386456717f1b1cdfc7f84a9960f4fc60c3a2a0efd62b567a4ab7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "diagnostics";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
