
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, rostest, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-self-test";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/self_test/1.9.3-0.tar.gz;
    sha256 = "75f63e5a717598ccb5e539f631228b2eb1372d574987589f088b698e1c4c0e1d";
  };

  buildInputs = [ diagnostic-msgs rostest roscpp diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-msgs roscpp diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''self_test'';
    #license = lib.licenses.BSD;
  };
}
