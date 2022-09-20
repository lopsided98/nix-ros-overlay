
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, driver-base, timestamp-tools }:
buildRosPackage {
  pname = "ros-melodic-driver-common";
  version = "1.6.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/melodic/driver_common/1.6.8-0.tar.gz";
    name = "1.6.8-0.tar.gz";
    sha256 = "ea3516b1e1c6ad29343302b5c174ea896dc280f60800fe0c6d0e34e08b31d465";
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
