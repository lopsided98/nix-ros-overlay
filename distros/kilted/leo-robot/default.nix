
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-filters, leo-fw }:
buildRosPackage {
  pname = "ros-kilted-leo-robot";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/kilted/leo_robot/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "bd7e6600d9362559620ada44157c561d90da1c65b49f3032b6eacdc41b460c7e";
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
