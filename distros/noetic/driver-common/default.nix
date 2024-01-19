
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, driver-base, timestamp-tools }:
buildRosPackage {
  pname = "ros-noetic-driver-common";
  version = "1.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/noetic/driver_common/1.6.9-1.tar.gz";
    name = "1.6.9-1.tar.gz";
    sha256 = "8e08f0ae655f89083ab38cd386d116bcc1a3678fdc3b84e5cf93df7b0a016ab3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ driver-base timestamp-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The driver_common stack contains classes and tools that are useful
    throughout the driver stacks. It currently contains:

    driver_base: A base class for sensors to provide a consistent state machine
    (retries, error handling, etc.) and interface

    timestamp_tools: Classes to help timestamp hardware events'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
