
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, self-test, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-driver-base";
  version = "1.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/noetic/driver_base/1.6.9-1.tar.gz";
    name = "1.6.9-1.tar.gz";
    sha256 = "9d65303877d39e80ed925f26cafd86198c0e3c3c047229d2788e87be22c3205c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime roscpp self-test std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A framework for writing drivers that helps with runtime reconfiguration, diagnostics and self-test.

    This package is deprecated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
