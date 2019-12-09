
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, catkin, self-test, diagnostic-common-diagnostics, diagnostic-analysis, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-diagnostics";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostics/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "dec737018e36952a217efb3fda54489da280470d5230f4a5fa282027317cc03f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator self-test diagnostic-common-diagnostics diagnostic-analysis diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
