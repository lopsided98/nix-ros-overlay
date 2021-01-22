
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, driver-base, timestamp-tools }:
buildRosPackage {
  pname = "ros-kinetic-driver-common";
  version = "1.6.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/kinetic/driver_common/1.6.8-0.tar.gz";
    name = "1.6.8-0.tar.gz";
    sha256 = "12d0ece2164262767b7e62bafa0e13ee8ba949770b1f98ae7578a771c2968ad3";
  };

  buildType = "catkin";
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
