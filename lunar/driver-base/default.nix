
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, catkin, diagnostic-updater, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-driver-base";
  version = "1.6.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/driver_common-release/archive/release/lunar/driver_base/1.6.8-0.tar.gz;
    sha256 = "e3e516df90d69f719d4e16ed6ff8e141fea61501cbe2f3799742d3be6d394f46";
  };

  buildInputs = [ diagnostic-updater message-generation self-test dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ diagnostic-updater message-runtime self-test dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A framework for writing drivers that helps with runtime reconfiguration, diagnostics and self-test.

    This package is deprecated.'';
    #license = lib.licenses.BSD;
  };
}
