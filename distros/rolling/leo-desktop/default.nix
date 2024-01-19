
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-rolling-leo-desktop";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/rolling/leo_desktop/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "269d7507793e2416e76bacfc5da987033c8c9afc0ea41cfed41674753c3117d6";
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
