
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-self-test";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/self_test/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "af54fd37ad353c8211b22f88df419e99fd3df93f37f55dd4255ec3e6b5487b41";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "self_test";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
