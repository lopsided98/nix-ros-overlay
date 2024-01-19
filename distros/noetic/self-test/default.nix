
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-self-test";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/self_test/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "4821b7e88addf297e02ff2eb431284e1fc8ddd30e4b1e54bf9f76b409e5a3e4f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''self_test'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
