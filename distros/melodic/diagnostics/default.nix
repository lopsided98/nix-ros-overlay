
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-analysis, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-melodic-diagnostics";
  version = "1.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostics/1.9.7-1.tar.gz";
    name = "1.9.7-1.tar.gz";
    sha256 = "71d2509b1354fbeb88059ef74d45aeed281fd0e8b7d48fc66fc90f6b063a802b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-analysis diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
