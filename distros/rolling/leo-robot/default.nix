
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-rolling-leo-robot";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/rolling/leo_robot/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "3074fae107f73fe4dbe23a8c5690818107c46cf1d4d258e9be8dac906808e705";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-filters leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software to install on Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
