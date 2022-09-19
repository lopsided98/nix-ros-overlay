
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-humble-leo-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/humble/leo_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "63334298c3f89973c53a81b343d3f07193e79fd2ee2d443aaeb27107f3f0f86e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
